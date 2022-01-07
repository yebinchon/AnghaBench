
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_remote_conn_param_req {int timeout; int latency; int interval_max; int interval_min; int handle; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_conn_param_req_reply {scalar_t__ max_ce_len; scalar_t__ min_ce_len; int timeout; int latency; int interval_max; int interval_min; int handle; } ;
struct hci_conn_params {void* supervision_timeout; void* conn_latency; void* conn_max_interval; void* conn_min_interval; } ;
struct hci_conn {scalar_t__ state; scalar_t__ role; int dst_type; int dst; } ;
typedef int cp ;


 scalar_t__ BT_CONNECTED ;
 int HCI_ERROR_INVALID_LL_PARAMS ;
 int HCI_ERROR_UNKNOWN_CONN_ID ;
 int HCI_OP_LE_CONN_PARAM_REQ_REPLY ;
 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ hci_check_conn_params (void*,void*,void*,void*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,void*) ;
 struct hci_conn_params* hci_conn_params_lookup (struct hci_dev*,int *,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_le_conn_param_req_reply*) ;
 void* le16_to_cpu (int ) ;
 int mgmt_new_conn_param (struct hci_dev*,int *,int ,int,void*,void*,void*,void*) ;
 void send_conn_param_neg_reply (struct hci_dev*,void*,int ) ;

__attribute__((used)) static void hci_le_remote_conn_param_req_evt(struct hci_dev *hdev,
          struct sk_buff *skb)
{
 struct hci_ev_le_remote_conn_param_req *ev = (void *) skb->data;
 struct hci_cp_le_conn_param_req_reply cp;
 struct hci_conn *hcon;
 u16 handle, min, max, latency, timeout;

 handle = le16_to_cpu(ev->handle);
 min = le16_to_cpu(ev->interval_min);
 max = le16_to_cpu(ev->interval_max);
 latency = le16_to_cpu(ev->latency);
 timeout = le16_to_cpu(ev->timeout);

 hcon = hci_conn_hash_lookup_handle(hdev, handle);
 if (!hcon || hcon->state != BT_CONNECTED)
  return send_conn_param_neg_reply(hdev, handle,
       HCI_ERROR_UNKNOWN_CONN_ID);

 if (hci_check_conn_params(min, max, latency, timeout))
  return send_conn_param_neg_reply(hdev, handle,
       HCI_ERROR_INVALID_LL_PARAMS);

 if (hcon->role == HCI_ROLE_MASTER) {
  struct hci_conn_params *params;
  u8 store_hint;

  hci_dev_lock(hdev);

  params = hci_conn_params_lookup(hdev, &hcon->dst,
      hcon->dst_type);
  if (params) {
   params->conn_min_interval = min;
   params->conn_max_interval = max;
   params->conn_latency = latency;
   params->supervision_timeout = timeout;
   store_hint = 0x01;
  } else{
   store_hint = 0x00;
  }

  hci_dev_unlock(hdev);

  mgmt_new_conn_param(hdev, &hcon->dst, hcon->dst_type,
        store_hint, min, max, latency, timeout);
 }

 cp.handle = ev->handle;
 cp.interval_min = ev->interval_min;
 cp.interval_max = ev->interval_max;
 cp.latency = ev->latency;
 cp.timeout = ev->timeout;
 cp.min_ce_len = 0;
 cp.max_ce_len = 0;

 hci_send_cmd(hdev, HCI_OP_LE_CONN_PARAM_REQ_REPLY, sizeof(cp), &cp);
}
