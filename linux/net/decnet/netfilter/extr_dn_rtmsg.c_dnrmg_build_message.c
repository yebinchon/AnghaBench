
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ tail; TYPE_1__* dev; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nf_dn_rtmsg {int nfdn_ifindex; } ;
typedef scalar_t__ sk_buff_data_t ;
struct TYPE_2__ {int ifindex; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned char* NFDN_RTMSG (struct nf_dn_rtmsg*) ;
 size_t NLMSG_ALIGN (int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,size_t,int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int) ;

__attribute__((used)) static struct sk_buff *dnrmg_build_message(struct sk_buff *rt_skb, int *errp)
{
 struct sk_buff *skb = ((void*)0);
 size_t size;
 sk_buff_data_t old_tail;
 struct nlmsghdr *nlh;
 unsigned char *ptr;
 struct nf_dn_rtmsg *rtm;

 size = NLMSG_ALIGN(rt_skb->len) +
        NLMSG_ALIGN(sizeof(struct nf_dn_rtmsg));
 skb = nlmsg_new(size, GFP_ATOMIC);
 if (!skb) {
  *errp = -ENOMEM;
  return ((void*)0);
 }
 old_tail = skb->tail;
 nlh = nlmsg_put(skb, 0, 0, 0, size, 0);
 if (!nlh) {
  kfree_skb(skb);
  *errp = -ENOMEM;
  return ((void*)0);
 }
 rtm = (struct nf_dn_rtmsg *)nlmsg_data(nlh);
 rtm->nfdn_ifindex = rt_skb->dev->ifindex;
 ptr = NFDN_RTMSG(rtm);
 skb_copy_from_linear_data(rt_skb, ptr, rt_skb->len);
 nlh->nlmsg_len = skb->tail - old_tail;
 return skb;
}
