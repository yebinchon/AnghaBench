
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {unsigned int tskey; int tx_flags; } ;


 int SKBTX_SW_TSTAMP ;
 scalar_t__ before (unsigned int,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void tcp_gso_tstamp(struct sk_buff *skb, unsigned int ts_seq,
      unsigned int seq, unsigned int mss)
{
 while (skb) {
  if (before(ts_seq, seq + mss)) {
   skb_shinfo(skb)->tx_flags |= SKBTX_SW_TSTAMP;
   skb_shinfo(skb)->tskey = ts_seq;
   return;
  }

  skb = skb->next;
  seq += mss;
 }
}
