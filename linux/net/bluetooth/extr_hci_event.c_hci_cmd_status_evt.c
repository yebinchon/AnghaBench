
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_cmd_status {scalar_t__ status; scalar_t__ ncmd; int opcode; } ;
struct hci_dev {int cmd_work; int workqueue; int cmd_q; int cmd_cnt; scalar_t__ sent_cmd; int flags; int cmd_timer; int name; } ;
typedef int hci_req_complete_t ;
typedef int hci_req_complete_skb_t ;
struct TYPE_3__ {int req_event; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_CMD_PENDING ;
 int HCI_OP_NOP ;







 int HCI_RESET ;
 int __le16_to_cpu (int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 TYPE_2__* bt_cb (scalar_t__) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int cancel_delayed_work (int *) ;
 int hci_cs_add_sco (struct hci_dev*,scalar_t__) ;
 int hci_cs_auth_requested (struct hci_dev*,scalar_t__) ;
 int hci_cs_create_conn (struct hci_dev*,scalar_t__) ;
 int hci_cs_disconnect (struct hci_dev*,scalar_t__) ;
 int hci_cs_exit_sniff_mode (struct hci_dev*,scalar_t__) ;
 int hci_cs_inquiry (struct hci_dev*,scalar_t__) ;
 int hci_cs_le_create_conn (struct hci_dev*,scalar_t__) ;
 int hci_cs_le_ext_create_conn (struct hci_dev*,scalar_t__) ;
 int hci_cs_le_read_remote_features (struct hci_dev*,scalar_t__) ;
 int hci_cs_le_start_enc (struct hci_dev*,scalar_t__) ;
 int hci_cs_read_remote_ext_features (struct hci_dev*,scalar_t__) ;
 int hci_cs_read_remote_features (struct hci_dev*,scalar_t__) ;
 int hci_cs_remote_name_req (struct hci_dev*,scalar_t__) ;
 int hci_cs_set_conn_encrypt (struct hci_dev*,scalar_t__) ;
 int hci_cs_setup_sync_conn (struct hci_dev*,scalar_t__) ;
 int hci_cs_sniff_mode (struct hci_dev*,scalar_t__) ;
 int hci_cs_switch_role (struct hci_dev*,scalar_t__) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_cmd_complete (struct hci_dev*,int ,scalar_t__,int *,int *) ;
 int queue_work (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_cmd_status_evt(struct hci_dev *hdev, struct sk_buff *skb,
          u16 *opcode, u8 *status,
          hci_req_complete_t *req_complete,
          hci_req_complete_skb_t *req_complete_skb)
{
 struct hci_ev_cmd_status *ev = (void *) skb->data;

 skb_pull(skb, sizeof(*ev));

 *opcode = __le16_to_cpu(ev->opcode);
 *status = ev->status;

 switch (*opcode) {
 case 139:
  hci_cs_inquiry(hdev, ev->status);
  break;

 case 142:
  hci_cs_create_conn(hdev, ev->status);
  break;

 case 141:
  hci_cs_disconnect(hdev, ev->status);
  break;

 case 144:
  hci_cs_add_sco(hdev, ev->status);
  break;

 case 143:
  hci_cs_auth_requested(hdev, ev->status);
  break;

 case 130:
  hci_cs_set_conn_encrypt(hdev, ev->status);
  break;

 case 132:
  hci_cs_remote_name_req(hdev, ev->status);
  break;

 case 133:
  hci_cs_read_remote_features(hdev, ev->status);
  break;

 case 134:
  hci_cs_read_remote_ext_features(hdev, ev->status);
  break;

 case 131:
  hci_cs_setup_sync_conn(hdev, ev->status);
  break;

 case 129:
  hci_cs_sniff_mode(hdev, ev->status);
  break;

 case 140:
  hci_cs_exit_sniff_mode(hdev, ev->status);
  break;

 case 128:
  hci_cs_switch_role(hdev, ev->status);
  break;

 case 138:
  hci_cs_le_create_conn(hdev, ev->status);
  break;

 case 136:
  hci_cs_le_read_remote_features(hdev, ev->status);
  break;

 case 135:
  hci_cs_le_start_enc(hdev, ev->status);
  break;

 case 137:
  hci_cs_le_ext_create_conn(hdev, ev->status);
  break;

 default:
  BT_DBG("%s opcode 0x%4.4x", hdev->name, *opcode);
  break;
 }

 if (*opcode != HCI_OP_NOP)
  cancel_delayed_work(&hdev->cmd_timer);

 if (ev->ncmd && !test_bit(HCI_RESET, &hdev->flags))
  atomic_set(&hdev->cmd_cnt, 1);







 if (ev->status ||
     (hdev->sent_cmd && !bt_cb(hdev->sent_cmd)->hci.req_event))
  hci_req_cmd_complete(hdev, *opcode, ev->status, req_complete,
         req_complete_skb);

 if (hci_dev_test_flag(hdev, HCI_CMD_PENDING)) {
  bt_dev_err(hdev,
      "unexpected event for opcode 0x%4.4x", *opcode);
  return;
 }

 if (atomic_read(&hdev->cmd_cnt) && !skb_queue_empty(&hdev->cmd_q))
  queue_work(hdev->workqueue, &hdev->cmd_work);
}
