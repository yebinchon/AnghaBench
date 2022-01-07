
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {scalar_t__ extended; } ;
struct sk_buff {int * sk; } ;


 int GFP_ATOMIC ;
 int X25_GFI_EXTSEQ ;
 int X25_GFI_STDSEQ ;
 int X25_MAX_L2_LEN ;
 int X25_RESTART_CONFIRMATION ;
 int X25_STD_MIN_LEN ;
 struct sk_buff* alloc_skb (int,int ) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int x25_send_frame (struct sk_buff*,struct x25_neigh*) ;

__attribute__((used)) static void x25_transmit_restart_confirmation(struct x25_neigh *nb)
{
 unsigned char *dptr;
 int len = X25_MAX_L2_LEN + X25_STD_MIN_LEN;
 struct sk_buff *skb = alloc_skb(len, GFP_ATOMIC);

 if (!skb)
  return;

 skb_reserve(skb, X25_MAX_L2_LEN);

 dptr = skb_put(skb, X25_STD_MIN_LEN);

 *dptr++ = nb->extended ? X25_GFI_EXTSEQ : X25_GFI_STDSEQ;
 *dptr++ = 0x00;
 *dptr++ = X25_RESTART_CONFIRMATION;

 skb->sk = ((void*)0);

 x25_send_frame(skb, nb);
}
