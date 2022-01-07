
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct genl_info {int * attrs; int snd_seq; int snd_portid; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NCSI_ATTR_IFINDEX ;
 size_t NCSI_ATTR_PACKAGE_ID ;
 int NCSI_ATTR_PACKAGE_LIST ;
 int NCSI_CMD_PKG_INFO ;
 int NLMSG_DEFAULT_SIZE ;
 int genl_info_net (struct genl_info*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 int ncsi_genl_family ;
 int ncsi_write_package_info (struct sk_buff*,struct ncsi_dev_priv*,unsigned int) ;
 struct ncsi_dev_priv* ndp_from_ifindex (int ,unsigned int) ;
 unsigned int nla_get_u32 (int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;

__attribute__((used)) static int ncsi_pkg_info_nl(struct sk_buff *msg, struct genl_info *info)
{
 struct ncsi_dev_priv *ndp;
 unsigned int package_id;
 struct sk_buff *skb;
 struct nlattr *attr;
 void *hdr;
 int rc;

 if (!info || !info->attrs)
  return -EINVAL;

 if (!info->attrs[NCSI_ATTR_IFINDEX])
  return -EINVAL;

 if (!info->attrs[NCSI_ATTR_PACKAGE_ID])
  return -EINVAL;

 ndp = ndp_from_ifindex(genl_info_net(info),
          nla_get_u32(info->attrs[NCSI_ATTR_IFINDEX]));
 if (!ndp)
  return -ENODEV;

 skb = genlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 hdr = genlmsg_put(skb, info->snd_portid, info->snd_seq,
     &ncsi_genl_family, 0, NCSI_CMD_PKG_INFO);
 if (!hdr) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 package_id = nla_get_u32(info->attrs[NCSI_ATTR_PACKAGE_ID]);

 attr = nla_nest_start_noflag(skb, NCSI_ATTR_PACKAGE_LIST);
 if (!attr) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }
 rc = ncsi_write_package_info(skb, ndp, package_id);

 if (rc) {
  nla_nest_cancel(skb, attr);
  goto err;
 }

 nla_nest_end(skb, attr);

 genlmsg_end(skb, hdr);
 return genlmsg_reply(skb, info);

err:
 kfree_skb(skb);
 return rc;
}
