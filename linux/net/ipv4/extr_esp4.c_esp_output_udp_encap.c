
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int lock; struct xfrm_encap_tmpl* encap; } ;
struct xfrm_encap_tmpl {int encap_type; void* encap_dport; void* encap_sport; } ;
struct udphdr {scalar_t__ check; int len; void* dest; void* source; } ;
struct sk_buff {int len; } ;
struct iphdr {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct esp_info {unsigned int tailen; struct ip_esp_hdr* esph; } ;
typedef int __be32 ;
typedef void* __be16 ;


 int EMSGSIZE ;
 int IPPROTO_UDP ;
 unsigned int IP_MAX_MTU ;


 int htons (unsigned int) ;
 int * skb_mac_header (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int esp_output_udp_encap(struct xfrm_state *x, struct sk_buff *skb, struct esp_info *esp)
{
 int encap_type;
 struct udphdr *uh;
 __be32 *udpdata32;
 __be16 sport, dport;
 struct xfrm_encap_tmpl *encap = x->encap;
 struct ip_esp_hdr *esph = esp->esph;
 unsigned int len;

 spin_lock_bh(&x->lock);
 sport = encap->encap_sport;
 dport = encap->encap_dport;
 encap_type = encap->encap_type;
 spin_unlock_bh(&x->lock);

 len = skb->len + esp->tailen - skb_transport_offset(skb);
 if (len + sizeof(struct iphdr) >= IP_MAX_MTU)
  return -EMSGSIZE;

 uh = (struct udphdr *)esph;
 uh->source = sport;
 uh->dest = dport;
 uh->len = htons(len);
 uh->check = 0;

 switch (encap_type) {
 default:
 case 129:
  esph = (struct ip_esp_hdr *)(uh + 1);
  break;
 case 128:
  udpdata32 = (__be32 *)(uh + 1);
  udpdata32[0] = udpdata32[1] = 0;
  esph = (struct ip_esp_hdr *)(udpdata32 + 2);
  break;
 }

 *skb_mac_header(skb) = IPPROTO_UDP;
 esp->esph = esph;

 return 0;
}
