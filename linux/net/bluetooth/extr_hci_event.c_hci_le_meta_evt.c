
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_meta {int subevent; } ;
struct hci_dev {int dummy; } ;
 int hci_le_adv_report_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_conn_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_conn_update_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_direct_adv_report_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_enh_conn_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_ext_adv_report_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_ext_adv_term_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_ltk_request_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_remote_conn_param_req_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_le_remote_feat_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void hci_le_meta_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_le_meta *le_ev = (void *) skb->data;

 skb_pull(skb, sizeof(*le_ev));

 switch (le_ev->subevent) {
 case 136:
  hci_le_conn_complete_evt(hdev, skb);
  break;

 case 135:
  hci_le_conn_update_complete_evt(hdev, skb);
  break;

 case 137:
  hci_le_adv_report_evt(hdev, skb);
  break;

 case 128:
  hci_le_remote_feat_complete_evt(hdev, skb);
  break;

 case 130:
  hci_le_ltk_request_evt(hdev, skb);
  break;

 case 129:
  hci_le_remote_conn_param_req_evt(hdev, skb);
  break;

 case 134:
  hci_le_direct_adv_report_evt(hdev, skb);
  break;

 case 132:
  hci_le_ext_adv_report_evt(hdev, skb);
  break;

 case 133:
  hci_le_enh_conn_complete_evt(hdev, skb);
  break;

 case 131:
  hci_le_ext_adv_term_evt(hdev, skb);
  break;

 default:
  break;
 }
}
