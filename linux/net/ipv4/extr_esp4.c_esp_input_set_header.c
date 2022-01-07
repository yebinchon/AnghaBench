
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int seq_no; int spi; } ;
typedef int __be32 ;
struct TYPE_6__ {int hi; } ;
struct TYPE_7__ {TYPE_2__ input; } ;
struct TYPE_8__ {TYPE_3__ seq; } ;


 TYPE_4__* XFRM_SKB_CB (struct sk_buff*) ;
 int XFRM_STATE_ESN ;
 struct ip_esp_hdr* skb_push (struct sk_buff*,int) ;
 struct xfrm_state* xfrm_input_state (struct sk_buff*) ;

__attribute__((used)) static void esp_input_set_header(struct sk_buff *skb, __be32 *seqhi)
{
 struct xfrm_state *x = xfrm_input_state(skb);
 struct ip_esp_hdr *esph;





 if ((x->props.flags & XFRM_STATE_ESN)) {
  esph = skb_push(skb, 4);
  *seqhi = esph->spi;
  esph->spi = esph->seq_no;
  esph->seq_no = XFRM_SKB_CB(skb)->seq.input.hi;
 }
}
