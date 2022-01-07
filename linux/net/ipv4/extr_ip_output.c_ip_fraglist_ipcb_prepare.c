
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_fraglist_iter {scalar_t__ offset; struct sk_buff* frag; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int ip_options_fragment (struct sk_buff*) ;

__attribute__((used)) static void ip_fraglist_ipcb_prepare(struct sk_buff *skb,
         struct ip_fraglist_iter *iter)
{
 struct sk_buff *to = iter->frag;


 IPCB(to)->flags = IPCB(skb)->flags;

 if (iter->offset == 0)
  ip_options_fragment(to);
}
