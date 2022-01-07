
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct udphdr {scalar_t__ check; void* len; void* dest; void* source; } ;
struct sk_buff {scalar_t__ csum; int ip_summed; int pkt_type; struct net_device* dev; void* protocol; int priority; int len; int data; } ;
struct pktgen_hdr {int dummy; } ;
struct pktgen_dev {int nr_labels; int vlan_id; int svlan_id; int cur_pkt_size; int pkt_overhead; int cur_udp_src; int cur_udp_dst; int ip_id; int flags; int cur_daddr; int cur_saddr; int tos; int hh; int skb_priority; int vlan_p; int vlan_cfi; int svlan_p; int svlan_cfi; int result; int cur_queue_map; } ;
struct net_device {int features; } ;
struct iphdr {int ihl; int version; int ttl; int daddr; int saddr; void* tot_len; scalar_t__ frag_off; void* id; int protocol; int tos; } ;
typedef int __wsum ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __be32 ;
typedef void* __be16 ;


 int CHECKSUM_NONE ;
 int CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_MPLS_UC ;
 int F_UDPCSUM ;
 int IPPROTO_UDP ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_IP_CSUM ;
 int PACKET_HOST ;
 void* build_tci (int,int ,int ) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,int,int ,int ) ;
 void* htons (int) ;
 int ip_send_check (struct iphdr*) ;
 int memcpy (int *,int ,int) ;
 int mod_cur_headers (struct pktgen_dev*) ;
 int mpls_push (int *,struct pktgen_dev*) ;
 struct sk_buff* pktgen_alloc_skb (struct net_device*,struct pktgen_dev*) ;
 int pktgen_finalize_skb (struct pktgen_dev*,struct sk_buff*,int) ;
 int prefetchw (int ) ;
 int process_ipsec (struct pktgen_dev*,struct sk_buff*,void*) ;
 int skb_checksum (struct sk_buff*,int ,int,int ) ;
 int * skb_push (struct sk_buff*,int) ;
 void* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;
 int skb_transport_offset (struct sk_buff*) ;
 int sprintf (int ,char*) ;
 int udp4_hwcsum (struct sk_buff*,int ,int ) ;

__attribute__((used)) static struct sk_buff *fill_packet_ipv4(struct net_device *odev,
     struct pktgen_dev *pkt_dev)
{
 struct sk_buff *skb = ((void*)0);
 __u8 *eth;
 struct udphdr *udph;
 int datalen, iplen;
 struct iphdr *iph;
 __be16 protocol = htons(ETH_P_IP);
 __be32 *mpls;
 __be16 *vlan_tci = ((void*)0);
 __be16 *vlan_encapsulated_proto = ((void*)0);
 __be16 *svlan_tci = ((void*)0);
 __be16 *svlan_encapsulated_proto = ((void*)0);
 u16 queue_map;

 if (pkt_dev->nr_labels)
  protocol = htons(ETH_P_MPLS_UC);

 if (pkt_dev->vlan_id != 0xffff)
  protocol = htons(ETH_P_8021Q);




 mod_cur_headers(pkt_dev);
 queue_map = pkt_dev->cur_queue_map;

 skb = pktgen_alloc_skb(odev, pkt_dev);
 if (!skb) {
  sprintf(pkt_dev->result, "No memory");
  return ((void*)0);
 }

 prefetchw(skb->data);
 skb_reserve(skb, 16);


 eth = skb_push(skb, 14);
 mpls = skb_put(skb, pkt_dev->nr_labels * sizeof(__u32));
 if (pkt_dev->nr_labels)
  mpls_push(mpls, pkt_dev);

 if (pkt_dev->vlan_id != 0xffff) {
  if (pkt_dev->svlan_id != 0xffff) {
   svlan_tci = skb_put(skb, sizeof(__be16));
   *svlan_tci = build_tci(pkt_dev->svlan_id,
            pkt_dev->svlan_cfi,
            pkt_dev->svlan_p);
   svlan_encapsulated_proto = skb_put(skb,
          sizeof(__be16));
   *svlan_encapsulated_proto = htons(ETH_P_8021Q);
  }
  vlan_tci = skb_put(skb, sizeof(__be16));
  *vlan_tci = build_tci(pkt_dev->vlan_id,
          pkt_dev->vlan_cfi,
          pkt_dev->vlan_p);
  vlan_encapsulated_proto = skb_put(skb, sizeof(__be16));
  *vlan_encapsulated_proto = htons(ETH_P_IP);
 }

 skb_reset_mac_header(skb);
 skb_set_network_header(skb, skb->len);
 iph = skb_put(skb, sizeof(struct iphdr));

 skb_set_transport_header(skb, skb->len);
 udph = skb_put(skb, sizeof(struct udphdr));
 skb_set_queue_mapping(skb, queue_map);
 skb->priority = pkt_dev->skb_priority;

 memcpy(eth, pkt_dev->hh, 12);
 *(__be16 *) & eth[12] = protocol;


 datalen = pkt_dev->cur_pkt_size - 14 - 20 - 8 -
    pkt_dev->pkt_overhead;
 if (datalen < 0 || datalen < sizeof(struct pktgen_hdr))
  datalen = sizeof(struct pktgen_hdr);

 udph->source = htons(pkt_dev->cur_udp_src);
 udph->dest = htons(pkt_dev->cur_udp_dst);
 udph->len = htons(datalen + 8);
 udph->check = 0;

 iph->ihl = 5;
 iph->version = 4;
 iph->ttl = 32;
 iph->tos = pkt_dev->tos;
 iph->protocol = IPPROTO_UDP;
 iph->saddr = pkt_dev->cur_saddr;
 iph->daddr = pkt_dev->cur_daddr;
 iph->id = htons(pkt_dev->ip_id);
 pkt_dev->ip_id++;
 iph->frag_off = 0;
 iplen = 20 + 8 + datalen;
 iph->tot_len = htons(iplen);
 ip_send_check(iph);
 skb->protocol = protocol;
 skb->dev = odev;
 skb->pkt_type = PACKET_HOST;

 pktgen_finalize_skb(pkt_dev, skb, datalen);

 if (!(pkt_dev->flags & F_UDPCSUM)) {
  skb->ip_summed = CHECKSUM_NONE;
 } else if (odev->features & (NETIF_F_HW_CSUM | NETIF_F_IP_CSUM)) {
  skb->ip_summed = CHECKSUM_PARTIAL;
  skb->csum = 0;
  udp4_hwcsum(skb, iph->saddr, iph->daddr);
 } else {
  __wsum csum = skb_checksum(skb, skb_transport_offset(skb), datalen + 8, 0);


  udph->check = csum_tcpudp_magic(iph->saddr, iph->daddr,
      datalen + 8, IPPROTO_UDP, csum);

  if (udph->check == 0)
   udph->check = CSUM_MANGLED_0;
 }






 return skb;
}
