
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int GFP_KERNEL ;
 int NLMSG_DONE ;
 int NLM_F_MULTI ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (void*,void const*,int) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int,int,int,int) ;

struct sk_buff *audit_make_reply(int seq, int type, int done,
     int multi, const void *payload, int size)
{
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 void *data;
 int flags = multi ? NLM_F_MULTI : 0;
 int t = done ? NLMSG_DONE : type;

 skb = nlmsg_new(size, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 nlh = nlmsg_put(skb, 0, seq, t, size, flags);
 if (!nlh)
  goto out_kfree_skb;
 data = nlmsg_data(nlh);
 memcpy(data, payload, size);
 return skb;

out_kfree_skb:
 kfree_skb(skb);
 return ((void*)0);
}
