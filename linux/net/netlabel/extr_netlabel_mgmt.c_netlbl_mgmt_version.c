
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NETLBL_PROTO_VERSION ;
 int NLBL_MGMT_A_VERSION ;
 int NLBL_MGMT_C_VERSION ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 int netlbl_mgmt_gnl_family ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int netlbl_mgmt_version(struct sk_buff *skb, struct genl_info *info)
{
 int ret_val = -ENOMEM;
 struct sk_buff *ans_skb = ((void*)0);
 void *data;

 ans_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (ans_skb == ((void*)0))
  return -ENOMEM;
 data = genlmsg_put_reply(ans_skb, info, &netlbl_mgmt_gnl_family,
     0, NLBL_MGMT_C_VERSION);
 if (data == ((void*)0))
  goto version_failure;

 ret_val = nla_put_u32(ans_skb,
         NLBL_MGMT_A_VERSION,
         NETLBL_PROTO_VERSION);
 if (ret_val != 0)
  goto version_failure;

 genlmsg_end(ans_skb, data);
 return genlmsg_reply(ans_skb, info);

version_failure:
 kfree_skb(ans_skb);
 return ret_val;
}
