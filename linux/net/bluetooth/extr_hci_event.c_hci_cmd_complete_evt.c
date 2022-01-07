
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int * data; } ;
struct hci_ev_cmd_complete {scalar_t__ ncmd; int opcode; } ;
struct hci_dev {int cmd_work; int workqueue; int cmd_q; int cmd_cnt; int flags; int cmd_timer; int name; } ;
typedef int hci_req_complete_t ;
typedef int hci_req_complete_skb_t ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_CMD_PENDING ;
 int HCI_OP_NOP ;
 int HCI_RESET ;
 int __le16_to_cpu (int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int cancel_delayed_work (int *) ;
 int hci_cc_delete_stored_link_key (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_exit_periodic_inq (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_inquiry_cancel (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_add_to_resolv_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_add_to_white_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_clear_resolv_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_clear_white_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_del_from_resolv_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_del_from_white_list (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_adv_tx_power (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_buffer_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_def_data_len (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_local_features (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_max_data_len (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_num_adv_sets (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_resolv_list_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_supported_states (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_read_white_list_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_addr_resolution_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_adv_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_adv_set_random_addr (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_default_phy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_ext_adv_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_ext_scan_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_ext_scan_param (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_random_addr (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_scan_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_set_scan_param (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_le_write_def_data_len (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_periodic_inq (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_pin_code_neg_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_pin_code_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_auth_payload_timeout (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_bd_addr (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_buffer_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_class_of_dev (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_clock (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_data_block_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_def_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_flow_control_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_inq_rsp_tx_power (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_amp_info (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_commands (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_ext_features (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_features (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_name (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_oob_data (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_oob_ext_data (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_version (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_num_supported_iac (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_page_scan_activity (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_page_scan_type (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_rssi (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_stored_link_key (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_tx_power (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_voice_setting (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_remote_name_req_cancel (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_reset (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_role_discovery (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_set_adv_param (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_set_ext_adv_param (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_user_confirm_neg_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_user_confirm_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_user_passkey_neg_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_user_passkey_reply (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_auth_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_auth_payload_timeout (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_class_of_dev (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_def_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_encrypt_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_le_host_supported (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_local_name (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_page_scan_activity (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_page_scan_type (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_sc_support (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_scan_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_ssp_debug_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_ssp_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_voice_setting (struct hci_dev*,struct sk_buff*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_cmd_complete (struct hci_dev*,int ,int ,int *,int *) ;
 int queue_work (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hci_cmd_complete_evt(struct hci_dev *hdev, struct sk_buff *skb,
     u16 *opcode, u8 *status,
     hci_req_complete_t *req_complete,
     hci_req_complete_skb_t *req_complete_skb)
{
 struct hci_ev_cmd_complete *ev = (void *) skb->data;

 *opcode = __le16_to_cpu(ev->opcode);
 *status = skb->data[sizeof(*ev)];

 skb_pull(skb, sizeof(*ev));

 switch (*opcode) {
 case 206:
  hci_cc_inquiry_cancel(hdev, skb);
  break;

 case 177:
  hci_cc_periodic_inq(hdev, skb);
  break;

 case 207:
  hci_cc_exit_periodic_inq(hdev, skb);
  break;

 case 149:
  hci_cc_remote_name_req_cancel(hdev, skb);
  break;

 case 147:
  hci_cc_role_discovery(hdev, skb);
  break;

 case 165:
  hci_cc_read_link_policy(hdev, skb);
  break;

 case 136:
  hci_cc_write_link_policy(hdev, skb);
  break;

 case 168:
  hci_cc_read_def_link_policy(hdev, skb);
  break;

 case 139:
  hci_cc_write_def_link_policy(hdev, skb);
  break;

 case 148:
  hci_cc_reset(hdev, skb);
  break;

 case 152:
  hci_cc_read_stored_link_key(hdev, skb);
  break;

 case 208:
  hci_cc_delete_stored_link_key(hdev, skb);
  break;

 case 135:
  hci_cc_write_local_name(hdev, skb);
  break;

 case 160:
  hci_cc_read_local_name(hdev, skb);
  break;

 case 142:
  hci_cc_write_auth_enable(hdev, skb);
  break;

 case 138:
  hci_cc_write_encrypt_mode(hdev, skb);
  break;

 case 132:
  hci_cc_write_scan_enable(hdev, skb);
  break;

 case 171:
  hci_cc_read_class_of_dev(hdev, skb);
  break;

 case 140:
  hci_cc_write_class_of_dev(hdev, skb);
  break;

 case 150:
  hci_cc_read_voice_setting(hdev, skb);
  break;

 case 128:
  hci_cc_write_voice_setting(hdev, skb);
  break;

 case 156:
  hci_cc_read_num_supported_iac(hdev, skb);
  break;

 case 129:
  hci_cc_write_ssp_mode(hdev, skb);
  break;

 case 131:
  hci_cc_write_sc_support(hdev, skb);
  break;

 case 174:
  hci_cc_read_auth_payload_timeout(hdev, skb);
  break;

 case 141:
  hci_cc_write_auth_payload_timeout(hdev, skb);
  break;

 case 157:
  hci_cc_read_local_version(hdev, skb);
  break;

 case 163:
  hci_cc_read_local_commands(hdev, skb);
  break;

 case 161:
  hci_cc_read_local_features(hdev, skb);
  break;

 case 162:
  hci_cc_read_local_ext_features(hdev, skb);
  break;

 case 172:
  hci_cc_read_buffer_size(hdev, skb);
  break;

 case 173:
  hci_cc_read_bd_addr(hdev, skb);
  break;

 case 155:
  hci_cc_read_page_scan_activity(hdev, skb);
  break;

 case 134:
  hci_cc_write_page_scan_activity(hdev, skb);
  break;

 case 154:
  hci_cc_read_page_scan_type(hdev, skb);
  break;

 case 133:
  hci_cc_write_page_scan_type(hdev, skb);
  break;

 case 169:
  hci_cc_read_data_block_size(hdev, skb);
  break;

 case 167:
  hci_cc_read_flow_control_mode(hdev, skb);
  break;

 case 164:
  hci_cc_read_local_amp_info(hdev, skb);
  break;

 case 170:
  hci_cc_read_clock(hdev, skb);
  break;

 case 166:
  hci_cc_read_inq_rsp_tx_power(hdev, skb);
  break;

 case 175:
  hci_cc_pin_code_reply(hdev, skb);
  break;

 case 176:
  hci_cc_pin_code_neg_reply(hdev, skb);
  break;

 case 159:
  hci_cc_read_local_oob_data(hdev, skb);
  break;

 case 158:
  hci_cc_read_local_oob_ext_data(hdev, skb);
  break;

 case 198:
  hci_cc_le_read_buffer_size(hdev, skb);
  break;

 case 196:
  hci_cc_le_read_local_features(hdev, skb);
  break;

 case 199:
  hci_cc_le_read_adv_tx_power(hdev, skb);
  break;

 case 145:
  hci_cc_user_confirm_reply(hdev, skb);
  break;

 case 146:
  hci_cc_user_confirm_neg_reply(hdev, skb);
  break;

 case 143:
  hci_cc_user_passkey_reply(hdev, skb);
  break;

 case 144:
  hci_cc_user_passkey_neg_reply(hdev, skb);
  break;

 case 181:
  hci_cc_le_set_random_addr(hdev, skb);
  break;

 case 189:
  hci_cc_le_set_adv_enable(hdev, skb);
  break;

 case 179:
  hci_cc_le_set_scan_param(hdev, skb);
  break;

 case 180:
  hci_cc_le_set_scan_enable(hdev, skb);
  break;

 case 191:
  hci_cc_le_read_white_list_size(hdev, skb);
  break;

 case 202:
  hci_cc_le_clear_white_list(hdev, skb);
  break;

 case 204:
  hci_cc_le_add_to_white_list(hdev, skb);
  break;

 case 200:
  hci_cc_le_del_from_white_list(hdev, skb);
  break;

 case 192:
  hci_cc_le_read_supported_states(hdev, skb);
  break;

 case 197:
  hci_cc_le_read_def_data_len(hdev, skb);
  break;

 case 178:
  hci_cc_le_write_def_data_len(hdev, skb);
  break;

 case 205:
  hci_cc_le_add_to_resolv_list(hdev, skb);
  break;

 case 201:
  hci_cc_le_del_from_resolv_list(hdev, skb);
  break;

 case 203:
  hci_cc_le_clear_resolv_list(hdev, skb);
  break;

 case 193:
  hci_cc_le_read_resolv_list_size(hdev, skb);
  break;

 case 190:
  hci_cc_le_set_addr_resolution_enable(hdev, skb);
  break;

 case 195:
  hci_cc_le_read_max_data_len(hdev, skb);
  break;

 case 137:
  hci_cc_write_le_host_supported(hdev, skb);
  break;

 case 188:
  hci_cc_set_adv_param(hdev, skb);
  break;

 case 153:
  hci_cc_read_rssi(hdev, skb);
  break;

 case 151:
  hci_cc_read_tx_power(hdev, skb);
  break;

 case 130:
  hci_cc_write_ssp_debug_mode(hdev, skb);
  break;

 case 182:
  hci_cc_le_set_ext_scan_param(hdev, skb);
  break;

 case 183:
  hci_cc_le_set_ext_scan_enable(hdev, skb);
  break;

 case 186:
  hci_cc_le_set_default_phy(hdev, skb);
  break;

 case 194:
  hci_cc_le_read_num_adv_sets(hdev, skb);
  break;

 case 184:
  hci_cc_set_ext_adv_param(hdev, skb);
  break;

 case 185:
  hci_cc_le_set_ext_adv_enable(hdev, skb);
  break;

 case 187:
  hci_cc_le_set_adv_set_random_addr(hdev, skb);
  break;

 default:
  BT_DBG("%s opcode 0x%4.4x", hdev->name, *opcode);
  break;
 }

 if (*opcode != HCI_OP_NOP)
  cancel_delayed_work(&hdev->cmd_timer);

 if (ev->ncmd && !test_bit(HCI_RESET, &hdev->flags))
  atomic_set(&hdev->cmd_cnt, 1);

 hci_req_cmd_complete(hdev, *opcode, *status, req_complete,
        req_complete_skb);

 if (hci_dev_test_flag(hdev, HCI_CMD_PENDING)) {
  bt_dev_err(hdev,
      "unexpected event for opcode 0x%4.4x", *opcode);
  return;
 }

 if (atomic_read(&hdev->cmd_cnt) && !skb_queue_empty(&hdev->cmd_q))
  queue_work(hdev->workqueue, &hdev->cmd_work);
}
