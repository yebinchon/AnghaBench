
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ idle_timeout; int workqueue; } ;
struct hci_cp_exit_sniff_mode {int handle; } ;
struct hci_conn {scalar_t__ mode; int idle_work; int handle; int flags; struct hci_dev* hdev; } ;
typedef int cp ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*,scalar_t__) ;
 scalar_t__ HCI_CM_SNIFF ;
 int HCI_CONN_MODE_CHANGE_PEND ;
 int HCI_CONN_POWER_SAVE ;
 int HCI_OP_EXIT_SNIFF_MODE ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_exit_sniff_mode*) ;
 int msecs_to_jiffies (scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void hci_conn_enter_active_mode(struct hci_conn *conn, __u8 force_active)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("hcon %p mode %d", conn, conn->mode);

 if (conn->mode != HCI_CM_SNIFF)
  goto timer;

 if (!test_bit(HCI_CONN_POWER_SAVE, &conn->flags) && !force_active)
  goto timer;

 if (!test_and_set_bit(HCI_CONN_MODE_CHANGE_PEND, &conn->flags)) {
  struct hci_cp_exit_sniff_mode cp;
  cp.handle = cpu_to_le16(conn->handle);
  hci_send_cmd(hdev, HCI_OP_EXIT_SNIFF_MODE, sizeof(cp), &cp);
 }

timer:
 if (hdev->idle_timeout > 0)
  queue_delayed_work(hdev->workqueue, &conn->idle_work,
       msecs_to_jiffies(hdev->idle_timeout));
}
