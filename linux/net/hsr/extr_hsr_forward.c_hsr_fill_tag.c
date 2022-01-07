
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int len; } ;
struct hsr_port {scalar_t__ type; } ;
struct hsr_frame_info {int sequence_nr; scalar_t__ is_vlan; } ;
struct TYPE_4__ {void* h_proto; } ;
struct TYPE_5__ {void* encap_proto; void* sequence_nr; } ;
struct hsr_ethhdr {TYPE_1__ ethhdr; TYPE_2__ hsr_tag; } ;


 int ETH_P_HSR ;
 int ETH_P_PRP ;
 scalar_t__ HSR_PT_SLAVE_A ;
 void* htons (int ) ;
 int set_hsr_tag_LSDU_size (TYPE_2__*,int) ;
 int set_hsr_tag_path (TYPE_2__*,int) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static void hsr_fill_tag(struct sk_buff *skb, struct hsr_frame_info *frame,
    struct hsr_port *port, u8 proto_version)
{
 struct hsr_ethhdr *hsr_ethhdr;
 int lane_id;
 int lsdu_size;

 if (port->type == HSR_PT_SLAVE_A)
  lane_id = 0;
 else
  lane_id = 1;

 lsdu_size = skb->len - 14;
 if (frame->is_vlan)
  lsdu_size -= 4;

 hsr_ethhdr = (struct hsr_ethhdr *)skb_mac_header(skb);

 set_hsr_tag_path(&hsr_ethhdr->hsr_tag, lane_id);
 set_hsr_tag_LSDU_size(&hsr_ethhdr->hsr_tag, lsdu_size);
 hsr_ethhdr->hsr_tag.sequence_nr = htons(frame->sequence_nr);
 hsr_ethhdr->hsr_tag.encap_proto = hsr_ethhdr->ethhdr.h_proto;
 hsr_ethhdr->ethhdr.h_proto = htons(proto_version ?
   ETH_P_HSR : ETH_P_PRP);
}
