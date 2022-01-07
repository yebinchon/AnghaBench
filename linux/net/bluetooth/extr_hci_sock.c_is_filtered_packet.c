
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct hci_filter {scalar_t__ opcode; int event_mask; int type_mask; } ;
typedef int __u8 ;
typedef int __le16 ;
struct TYPE_2__ {struct hci_filter filter; } ;


 int HCI_EVENT_PKT ;
 int HCI_EV_CMD_COMPLETE ;
 int HCI_EV_CMD_STATUS ;
 int HCI_FLT_EVENT_BITS ;
 int HCI_FLT_TYPE_BITS ;
 scalar_t__ get_unaligned (int *) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int hci_test_bit (int,int *) ;
 int test_bit (int,int *) ;

__attribute__((used)) static bool is_filtered_packet(struct sock *sk, struct sk_buff *skb)
{
 struct hci_filter *flt;
 int flt_type, flt_event;


 flt = &hci_pi(sk)->filter;

 flt_type = hci_skb_pkt_type(skb) & HCI_FLT_TYPE_BITS;

 if (!test_bit(flt_type, &flt->type_mask))
  return 1;


 if (hci_skb_pkt_type(skb) != HCI_EVENT_PKT)
  return 0;

 flt_event = (*(__u8 *)skb->data & HCI_FLT_EVENT_BITS);

 if (!hci_test_bit(flt_event, &flt->event_mask))
  return 1;


 if (!flt->opcode)
  return 0;

 if (flt_event == HCI_EV_CMD_COMPLETE &&
     flt->opcode != get_unaligned((__le16 *)(skb->data + 3)))
  return 1;

 if (flt_event == HCI_EV_CMD_STATUS &&
     flt->opcode != get_unaligned((__le16 *)(skb->data + 4)))
  return 1;

 return 0;
}
