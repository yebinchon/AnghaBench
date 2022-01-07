
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int ENOMEM ;
 int GENLMSG_DEFAULT_SIZE ;
 int GFP_KERNEL ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;

__attribute__((used)) static int devlink_dpipe_send_and_alloc_skb(struct sk_buff **pskb,
         struct genl_info *info)
{
 int err;

 if (*pskb) {
  err = genlmsg_reply(*pskb, info);
  if (err)
   return err;
 }
 *pskb = genlmsg_new(GENLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!*pskb)
  return -ENOMEM;
 return 0;
}
