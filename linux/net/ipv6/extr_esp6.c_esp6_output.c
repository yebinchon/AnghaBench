
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int spi; } ;
struct xfrm_state {TYPE_1__ id; scalar_t__ tfcpad; struct crypto_aead* data; } ;
struct xfrm_dst {int child_mtu_cached; } ;
struct sk_buff {scalar_t__ len; } ;
struct ip_esp_hdr {int seq_no; int spi; } ;
struct esp_info {int inplace; int tfclen; int clen; int plen; int tailen; scalar_t__ nfrags; int seqno; int proto; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_6__ {scalar_t__ hi; scalar_t__ low; } ;
struct TYPE_7__ {TYPE_2__ output; } ;
struct TYPE_8__ {TYPE_3__ seq; } ;


 void* ALIGN (int,int) ;
 int IPPROTO_ESP ;
 TYPE_4__* XFRM_SKB_CB (struct sk_buff*) ;
 int cpu_to_be64 (scalar_t__) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;
 scalar_t__ esp6_output_head (struct xfrm_state*,struct sk_buff*,struct esp_info*) ;
 int esp6_output_tail (struct xfrm_state*,struct sk_buff*,struct esp_info*) ;
 int htonl (scalar_t__) ;
 struct ip_esp_hdr* ip_esp_hdr (struct sk_buff*) ;
 scalar_t__ min (scalar_t__,int ) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int * skb_mac_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 int xfrm_state_mtu (struct xfrm_state*,int ) ;

__attribute__((used)) static int esp6_output(struct xfrm_state *x, struct sk_buff *skb)
{
 int alen;
 int blksize;
 struct ip_esp_hdr *esph;
 struct crypto_aead *aead;
 struct esp_info esp;

 esp.inplace = 1;

 esp.proto = *skb_mac_header(skb);
 *skb_mac_header(skb) = IPPROTO_ESP;



 aead = x->data;
 alen = crypto_aead_authsize(aead);

 esp.tfclen = 0;
 if (x->tfcpad) {
  struct xfrm_dst *dst = (struct xfrm_dst *)skb_dst(skb);
  u32 padto;

  padto = min(x->tfcpad, xfrm_state_mtu(x, dst->child_mtu_cached));
  if (skb->len < padto)
   esp.tfclen = padto - skb->len;
 }
 blksize = ALIGN(crypto_aead_blocksize(aead), 4);
 esp.clen = ALIGN(skb->len + 2 + esp.tfclen, blksize);
 esp.plen = esp.clen - skb->len - esp.tfclen;
 esp.tailen = esp.tfclen + esp.plen + alen;

 esp.nfrags = esp6_output_head(x, skb, &esp);
 if (esp.nfrags < 0)
  return esp.nfrags;

 esph = ip_esp_hdr(skb);
 esph->spi = x->id.spi;

 esph->seq_no = htonl(XFRM_SKB_CB(skb)->seq.output.low);
 esp.seqno = cpu_to_be64(XFRM_SKB_CB(skb)->seq.output.low +
       ((u64)XFRM_SKB_CB(skb)->seq.output.hi << 32));

 skb_push(skb, -skb_network_offset(skb));

 return esp6_output_tail(x, skb, &esp);
}
