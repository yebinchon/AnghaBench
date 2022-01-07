
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_scan_params {int window; int interval; } ;
struct hci_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct hci_dev {int le_scan_interval; int le_scan_window; TYPE_1__ discovery; int id; int name; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ) ;
 scalar_t__ DISCOVERY_STOPPED ;
 int HCI_LE_SCAN ;
 int MGMT_OP_SET_SCAN_PARAMS ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 int __le16_to_cpu (int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add_le_passive_scan (struct hci_request*) ;
 int hci_req_add_le_scan_disable (struct hci_request*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int *) ;
 int lmp_le_capable (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int *,int ) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;

__attribute__((used)) static int set_scan_params(struct sock *sk, struct hci_dev *hdev,
      void *data, u16 len)
{
 struct mgmt_cp_set_scan_params *cp = data;
 __u16 interval, window;
 int err;

 BT_DBG("%s", hdev->name);

 if (!lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
           MGMT_STATUS_NOT_SUPPORTED);

 interval = __le16_to_cpu(cp->interval);

 if (interval < 0x0004 || interval > 0x4000)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
           MGMT_STATUS_INVALID_PARAMS);

 window = __le16_to_cpu(cp->window);

 if (window < 0x0004 || window > 0x4000)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
           MGMT_STATUS_INVALID_PARAMS);

 if (window > interval)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 hdev->le_scan_interval = interval;
 hdev->le_scan_window = window;

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS, 0,
    ((void*)0), 0);




 if (hci_dev_test_flag(hdev, HCI_LE_SCAN) &&
     hdev->discovery.state == DISCOVERY_STOPPED) {
  struct hci_request req;

  hci_req_init(&req, hdev);

  hci_req_add_le_scan_disable(&req);
  hci_req_add_le_passive_scan(&req);

  hci_req_run(&req, ((void*)0));
 }

 hci_dev_unlock(hdev);

 return err;
}
