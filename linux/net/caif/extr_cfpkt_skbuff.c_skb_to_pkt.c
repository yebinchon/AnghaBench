
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;



__attribute__((used)) static inline struct cfpkt *skb_to_pkt(struct sk_buff *skb)
{
 return (struct cfpkt *) skb;
}
