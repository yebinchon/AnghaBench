
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLBL_UNLABEL_A_ACPTFLG ;
 int NLBL_UNLABEL_C_LIST ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 int netlabel_unlabel_acceptflg ;
 int netlbl_unlabel_gnl_family ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int netlbl_unlabel_list(struct sk_buff *skb, struct genl_info *info)
{
 int ret_val = -EINVAL;
 struct sk_buff *ans_skb;
 void *data;

 ans_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (ans_skb == ((void*)0))
  goto list_failure;
 data = genlmsg_put_reply(ans_skb, info, &netlbl_unlabel_gnl_family,
     0, NLBL_UNLABEL_C_LIST);
 if (data == ((void*)0)) {
  ret_val = -ENOMEM;
  goto list_failure;
 }

 ret_val = nla_put_u8(ans_skb,
        NLBL_UNLABEL_A_ACPTFLG,
        netlabel_unlabel_acceptflg);
 if (ret_val != 0)
  goto list_failure;

 genlmsg_end(ans_skb, data);
 return genlmsg_reply(ans_skb, info);

list_failure:
 kfree_skb(ans_skb);
 return ret_val;
}
