
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;
struct devlink_fmsg {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GENLMSG_DEFAULT_SIZE ;
 int GFP_KERNEL ;
 int NLMSG_DONE ;
 int NLM_F_MULTI ;
 int devlink_fmsg_prepare_skb (struct devlink_fmsg*,struct sk_buff*,int*) ;
 int devlink_nl_family ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int devlink_fmsg_snd(struct devlink_fmsg *fmsg,
       struct genl_info *info,
       enum devlink_command cmd, int flags)
{
 struct nlmsghdr *nlh;
 struct sk_buff *skb;
 bool last = 0;
 int index = 0;
 void *hdr;
 int err;

 while (!last) {
  int tmp_index = index;

  skb = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
  if (!skb)
   return -ENOMEM;

  hdr = genlmsg_put(skb, info->snd_portid, info->snd_seq,
      &devlink_nl_family, flags | NLM_F_MULTI, cmd);
  if (!hdr) {
   err = -EMSGSIZE;
   goto nla_put_failure;
  }

  err = devlink_fmsg_prepare_skb(fmsg, skb, &index);
  if (!err)
   last = 1;
  else if (err != -EMSGSIZE || tmp_index == index)
   goto nla_put_failure;

  genlmsg_end(skb, hdr);
  err = genlmsg_reply(skb, info);
  if (err)
   return err;
 }

 skb = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 nlh = nlmsg_put(skb, info->snd_portid, info->snd_seq,
   NLMSG_DONE, 0, flags | NLM_F_MULTI);
 if (!nlh) {
  err = -EMSGSIZE;
  goto nla_put_failure;
 }

 return genlmsg_reply(skb, info);

nla_put_failure:
 nlmsg_free(skb);
 return err;
}
