
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rose_neigh {int dummy; } ;


 int AX25_BPQ_HEADER_LEN ;
 int AX25_MAX_HEADER_LEN ;
 int AX25_P_ROSE ;
 int GFP_ATOMIC ;
 int ROSE_CLEAR_REQUEST ;
 unsigned int ROSE_GFI ;
 int ROSE_MIN_LEN ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rose_send_frame (struct sk_buff*,struct rose_neigh*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

void rose_transmit_clear_request(struct rose_neigh *neigh, unsigned int lci, unsigned char cause, unsigned char diagnostic)
{
 struct sk_buff *skb;
 unsigned char *dptr;
 int len;

 len = AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN + 3;

 if ((skb = alloc_skb(len, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skb, AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN);

 dptr = skb_put(skb, ROSE_MIN_LEN + 3);

 *dptr++ = AX25_P_ROSE;
 *dptr++ = ((lci >> 8) & 0x0F) | ROSE_GFI;
 *dptr++ = ((lci >> 0) & 0xFF);
 *dptr++ = ROSE_CLEAR_REQUEST;
 *dptr++ = cause;
 *dptr++ = diagnostic;

 if (!rose_send_frame(skb, neigh))
  kfree_skb(skb);
}
