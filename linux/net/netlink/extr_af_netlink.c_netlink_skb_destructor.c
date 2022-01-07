
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int * sk; int * head; int cloned; } ;
struct TYPE_2__ {int dataref; } ;


 int atomic_dec_return (int *) ;
 scalar_t__ is_vmalloc_addr (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int sock_rfree (struct sk_buff*) ;
 int vfree (int *) ;

__attribute__((used)) static void netlink_skb_destructor(struct sk_buff *skb)
{
 if (is_vmalloc_addr(skb->head)) {
  if (!skb->cloned ||
      !atomic_dec_return(&(skb_shinfo(skb)->dataref)))
   vfree(skb->head);

  skb->head = ((void*)0);
 }
 if (skb->sk != ((void*)0))
  sock_rfree(skb);
}
