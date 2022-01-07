
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ len; } ;
struct ip6_frag_state {unsigned int hlen; unsigned int mtu; unsigned int ptr; int hroom; unsigned short troom; scalar_t__ offset; scalar_t__ left; int frag_id; int nexthdr; int * prevhdr; } ;
typedef int __be32 ;



void ip6_frag_init(struct sk_buff *skb, unsigned int hlen, unsigned int mtu,
     unsigned short needed_tailroom, int hdr_room, u8 *prevhdr,
     u8 nexthdr, __be32 frag_id, struct ip6_frag_state *state)
{
 state->prevhdr = prevhdr;
 state->nexthdr = nexthdr;
 state->frag_id = frag_id;

 state->hlen = hlen;
 state->mtu = mtu;

 state->left = skb->len - hlen;
 state->ptr = hlen;

 state->hroom = hdr_room;
 state->troom = needed_tailroom;

 state->offset = 0;
}
