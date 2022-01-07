
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct hci_dev {int pkt_type; int num_iac; int io_capability; int manufacturer; int cur_adv_instance; int sniff_max_interval; int sniff_min_interval; int le_adv_channel_map; int le_adv_min_interval; int le_adv_max_interval; int le_scan_interval; int le_scan_window; int le_conn_min_interval; int le_conn_max_interval; int le_conn_latency; int le_supv_timeout; int le_def_tx_len; int le_def_tx_time; int le_max_tx_len; int le_max_tx_time; int le_max_rx_len; int le_max_rx_time; int cmd_timer; int req_wait_q; int raw_q; int cmd_q; int rx_q; int power_off; int error_reset; int power_on; int tx_work; int cmd_work; int rx_work; int adv_instances; TYPE_1__ conn_hash; int pend_le_reports; int pend_le_conns; int le_conn_params; int le_resolv_list; int le_white_list; int remote_oob_data; int identity_resolving_keys; int long_term_keys; int link_keys; int uuids; int whitelist; int blacklist; int mgmt_pending; int req_lock; int lock; int min_enc_key_size; int auth_payload_timeout; int conn_info_max_age; int conn_info_min_age; int discov_interleaved_timeout; int rpa_timeout; int le_num_of_adv_sets; void* le_rx_def_phys; void* le_tx_def_phys; int le_min_key_size; int le_max_key_size; scalar_t__ adv_instance_timeout; scalar_t__ adv_instance_cnt; void* adv_tx_power; void* inq_tx_power; int link_mode; int esco_type; } ;


 int DEFAULT_AUTH_PAYLOAD_TIMEOUT ;
 int DEFAULT_CONN_INFO_MAX_AGE ;
 int DEFAULT_CONN_INFO_MIN_AGE ;
 int DISCOV_INTERLEAVED_TIMEOUT ;
 int ESCO_HV1 ;
 int GFP_KERNEL ;
 int HCI_DEFAULT_RPA_TIMEOUT ;
 int HCI_DH1 ;
 int HCI_DM1 ;
 int HCI_HV1 ;
 void* HCI_LE_SET_PHY_1M ;
 int HCI_LM_ACCEPT ;
 int HCI_MAX_ADV_INSTANCES ;
 int HCI_MIN_ENC_KEY_SIZE ;
 void* HCI_TX_POWER_INVALID ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SMP_MAX_ENC_KEY_SIZE ;
 int SMP_MIN_ENC_KEY_SIZE ;
 int discovery_init (struct hci_dev*) ;
 int hci_cmd_timeout ;
 int hci_cmd_work ;
 int hci_error_reset ;
 int hci_init_sysfs (struct hci_dev*) ;
 int hci_power_off ;
 int hci_power_on ;
 int hci_request_setup (struct hci_dev*) ;
 int hci_rx_work ;
 int hci_tx_work ;
 int init_waitqueue_head (int *) ;
 struct hci_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;

struct hci_dev *hci_alloc_dev(void)
{
 struct hci_dev *hdev;

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return ((void*)0);

 hdev->pkt_type = (HCI_DM1 | HCI_DH1 | HCI_HV1);
 hdev->esco_type = (ESCO_HV1);
 hdev->link_mode = (HCI_LM_ACCEPT);
 hdev->num_iac = 0x01;
 hdev->io_capability = 0x03;
 hdev->manufacturer = 0xffff;
 hdev->inq_tx_power = HCI_TX_POWER_INVALID;
 hdev->adv_tx_power = HCI_TX_POWER_INVALID;
 hdev->adv_instance_cnt = 0;
 hdev->cur_adv_instance = 0x00;
 hdev->adv_instance_timeout = 0;

 hdev->sniff_max_interval = 800;
 hdev->sniff_min_interval = 80;

 hdev->le_adv_channel_map = 0x07;
 hdev->le_adv_min_interval = 0x0800;
 hdev->le_adv_max_interval = 0x0800;
 hdev->le_scan_interval = 0x0060;
 hdev->le_scan_window = 0x0030;
 hdev->le_conn_min_interval = 0x0018;
 hdev->le_conn_max_interval = 0x0028;
 hdev->le_conn_latency = 0x0000;
 hdev->le_supv_timeout = 0x002a;
 hdev->le_def_tx_len = 0x001b;
 hdev->le_def_tx_time = 0x0148;
 hdev->le_max_tx_len = 0x001b;
 hdev->le_max_tx_time = 0x0148;
 hdev->le_max_rx_len = 0x001b;
 hdev->le_max_rx_time = 0x0148;
 hdev->le_max_key_size = SMP_MAX_ENC_KEY_SIZE;
 hdev->le_min_key_size = SMP_MIN_ENC_KEY_SIZE;
 hdev->le_tx_def_phys = HCI_LE_SET_PHY_1M;
 hdev->le_rx_def_phys = HCI_LE_SET_PHY_1M;
 hdev->le_num_of_adv_sets = HCI_MAX_ADV_INSTANCES;

 hdev->rpa_timeout = HCI_DEFAULT_RPA_TIMEOUT;
 hdev->discov_interleaved_timeout = DISCOV_INTERLEAVED_TIMEOUT;
 hdev->conn_info_min_age = DEFAULT_CONN_INFO_MIN_AGE;
 hdev->conn_info_max_age = DEFAULT_CONN_INFO_MAX_AGE;
 hdev->auth_payload_timeout = DEFAULT_AUTH_PAYLOAD_TIMEOUT;
 hdev->min_enc_key_size = HCI_MIN_ENC_KEY_SIZE;

 mutex_init(&hdev->lock);
 mutex_init(&hdev->req_lock);

 INIT_LIST_HEAD(&hdev->mgmt_pending);
 INIT_LIST_HEAD(&hdev->blacklist);
 INIT_LIST_HEAD(&hdev->whitelist);
 INIT_LIST_HEAD(&hdev->uuids);
 INIT_LIST_HEAD(&hdev->link_keys);
 INIT_LIST_HEAD(&hdev->long_term_keys);
 INIT_LIST_HEAD(&hdev->identity_resolving_keys);
 INIT_LIST_HEAD(&hdev->remote_oob_data);
 INIT_LIST_HEAD(&hdev->le_white_list);
 INIT_LIST_HEAD(&hdev->le_resolv_list);
 INIT_LIST_HEAD(&hdev->le_conn_params);
 INIT_LIST_HEAD(&hdev->pend_le_conns);
 INIT_LIST_HEAD(&hdev->pend_le_reports);
 INIT_LIST_HEAD(&hdev->conn_hash.list);
 INIT_LIST_HEAD(&hdev->adv_instances);

 INIT_WORK(&hdev->rx_work, hci_rx_work);
 INIT_WORK(&hdev->cmd_work, hci_cmd_work);
 INIT_WORK(&hdev->tx_work, hci_tx_work);
 INIT_WORK(&hdev->power_on, hci_power_on);
 INIT_WORK(&hdev->error_reset, hci_error_reset);

 INIT_DELAYED_WORK(&hdev->power_off, hci_power_off);

 skb_queue_head_init(&hdev->rx_q);
 skb_queue_head_init(&hdev->cmd_q);
 skb_queue_head_init(&hdev->raw_q);

 init_waitqueue_head(&hdev->req_wait_q);

 INIT_DELAYED_WORK(&hdev->cmd_timer, hci_cmd_timeout);

 hci_request_setup(hdev);

 hci_init_sysfs(hdev);
 discovery_init(hdev);

 return hdev;
}
