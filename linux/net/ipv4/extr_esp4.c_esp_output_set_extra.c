
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int spi; } ;
struct TYPE_11__ {int flags; } ;
struct xfrm_state {TYPE_4__ id; TYPE_5__ props; } ;
struct TYPE_7__ {int hi; } ;
struct xfrm_offload {TYPE_1__ seq; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int spi; int seq_no; } ;
struct esp_output_extra {unsigned char* esphoff; int seqhi; } ;
typedef int __u32 ;
struct TYPE_8__ {int hi; } ;
struct TYPE_9__ {TYPE_2__ output; } ;
struct TYPE_12__ {TYPE_3__ seq; } ;


 TYPE_6__* XFRM_SKB_CB (struct sk_buff*) ;
 int XFRM_STATE_ESN ;
 int htonl (int ) ;
 int skb_transport_header (struct sk_buff*) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static struct ip_esp_hdr *esp_output_set_extra(struct sk_buff *skb,
            struct xfrm_state *x,
            struct ip_esp_hdr *esph,
            struct esp_output_extra *extra)
{




 if ((x->props.flags & XFRM_STATE_ESN)) {
  __u32 seqhi;
  struct xfrm_offload *xo = xfrm_offload(skb);

  if (xo)
   seqhi = xo->seq.hi;
  else
   seqhi = XFRM_SKB_CB(skb)->seq.output.hi;

  extra->esphoff = (unsigned char *)esph -
     skb_transport_header(skb);
  esph = (struct ip_esp_hdr *)((unsigned char *)esph - 4);
  extra->seqhi = esph->spi;
  esph->seq_no = htonl(seqhi);
 }

 esph->spi = x->id.spi;

 return esph;
}
