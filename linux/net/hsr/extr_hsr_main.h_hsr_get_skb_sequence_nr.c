
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sequence_nr; } ;
struct hsr_ethhdr {TYPE_1__ hsr_tag; } ;


 int ntohs (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline u16 hsr_get_skb_sequence_nr(struct sk_buff *skb)
{
 struct hsr_ethhdr *hsr_ethhdr;

 hsr_ethhdr = (struct hsr_ethhdr *)skb_mac_header(skb);
 return ntohs(hsr_ethhdr->hsr_tag.sequence_nr);
}
