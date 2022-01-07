
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tso_t {int tcp_seq; scalar_t__ size; int data; size_t next_frag_idx; } ;
struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {size_t nr_frags; int * frags; } ;


 int skb_frag_address (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

void tso_build_data(struct sk_buff *skb, struct tso_t *tso, int size)
{
 tso->tcp_seq += size;
 tso->size -= size;
 tso->data += size;

 if ((tso->size == 0) &&
     (tso->next_frag_idx < skb_shinfo(skb)->nr_frags)) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[tso->next_frag_idx];


  tso->size = skb_frag_size(frag);
  tso->data = skb_frag_address(frag);
  tso->next_frag_idx++;
 }
}
