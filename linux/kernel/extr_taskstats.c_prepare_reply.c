
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int family ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int,int *,int ,int ) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int taskstats_seqnum ;
 int this_cpu_inc_return (int ) ;

__attribute__((used)) static int prepare_reply(struct genl_info *info, u8 cmd, struct sk_buff **skbp,
    size_t size)
{
 struct sk_buff *skb;
 void *reply;




 skb = genlmsg_new(size, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 if (!info) {
  int seq = this_cpu_inc_return(taskstats_seqnum) - 1;

  reply = genlmsg_put(skb, 0, seq, &family, 0, cmd);
 } else
  reply = genlmsg_put_reply(skb, info, &family, 0, cmd);
 if (reply == ((void*)0)) {
  nlmsg_free(skb);
  return -EINVAL;
 }

 *skbp = skb;
 return 0;
}
