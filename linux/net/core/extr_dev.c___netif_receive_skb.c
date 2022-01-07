
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __netif_receive_skb_one_core (struct sk_buff*,int) ;
 int memalloc_noreclaim_restore (unsigned int) ;
 unsigned int memalloc_noreclaim_save () ;
 scalar_t__ sk_memalloc_socks () ;
 scalar_t__ skb_pfmemalloc (struct sk_buff*) ;

__attribute__((used)) static int __netif_receive_skb(struct sk_buff *skb)
{
 int ret;

 if (sk_memalloc_socks() && skb_pfmemalloc(skb)) {
  unsigned int noreclaim_flag;
  noreclaim_flag = memalloc_noreclaim_save();
  ret = __netif_receive_skb_one_core(skb, 1);
  memalloc_noreclaim_restore(noreclaim_flag);
 } else
  ret = __netif_receive_skb_one_core(skb, 0);

 return ret;
}
