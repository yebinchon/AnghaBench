
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udph ;
struct v6hdr {int dummy; } ;
struct udphdr {int dest; int protocol; } ;
struct gre_hdr {int dest; int protocol; } ;
struct __sk_buff {int dummy; } ;
typedef int mpls_label ;
typedef int greh ;


 int BPF_ADJ_ROOM_MAC ;
 int BPF_F_ADJ_ROOM_FIXED_GSO ;
 int ETH_HLEN ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_ntohs (int ) ;
 scalar_t__ bpf_skb_adjust_room (struct __sk_buff*,int,int ,int ) ;
 int bpf_skb_load_bytes (struct __sk_buff*,int,struct udphdr*,int) ;

__attribute__((used)) static int decap_internal(struct __sk_buff *skb, int off, int len, char proto)
{
 char buf[sizeof(struct v6hdr)];
 struct gre_hdr greh;
 struct udphdr udph;
 int olen = len;

 switch (proto) {
 case 131:
 case 130:
  break;
 case 132:
  olen += sizeof(struct gre_hdr);
  if (bpf_skb_load_bytes(skb, off + len, &greh, sizeof(greh)) < 0)
   return TC_ACT_OK;
  switch (bpf_ntohs(greh.protocol)) {
  case 134:
   olen += sizeof(mpls_label);
   break;
  case 133:
   olen += ETH_HLEN;
   break;
  }
  break;
 case 129:
  olen += sizeof(struct udphdr);
  if (bpf_skb_load_bytes(skb, off + len, &udph, sizeof(udph)) < 0)
   return TC_ACT_OK;
  switch (bpf_ntohs(udph.dest)) {
  case 128:
   olen += sizeof(mpls_label);
   break;
  case 135:
   olen += ETH_HLEN;
   break;
  }
  break;
 default:
  return TC_ACT_OK;
 }

 if (bpf_skb_adjust_room(skb, -olen, BPF_ADJ_ROOM_MAC,
    BPF_F_ADJ_ROOM_FIXED_GSO))
  return TC_ACT_SHOT;

 return TC_ACT_OK;
}
