
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_cp_read_clock_offset {int handle; } ;
struct hci_conn {scalar_t__ type; scalar_t__ role; scalar_t__ state; int handle; struct hci_dev* hdev; } ;
typedef int clkoff_cp ;
typedef int __u8 ;


 scalar_t__ ACL_LINK ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_OP_READ_CLOCK_OFFSET ;
 scalar_t__ HCI_ROLE_MASTER ;
 int cpu_to_le16 (int ) ;
 int hci_abort_conn (struct hci_conn*,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_read_clock_offset*) ;

int hci_disconnect(struct hci_conn *conn, __u8 reason)
{
 BT_DBG("hcon %p", conn);






 if (conn->type == ACL_LINK && conn->role == HCI_ROLE_MASTER &&
     (conn->state == BT_CONNECTED || conn->state == BT_CONFIG)) {
  struct hci_dev *hdev = conn->hdev;
  struct hci_cp_read_clock_offset clkoff_cp;

  clkoff_cp.handle = cpu_to_le16(conn->handle);
  hci_send_cmd(hdev, HCI_OP_READ_CLOCK_OFFSET, sizeof(clkoff_cp),
        &clkoff_cp);
 }

 return hci_abort_conn(conn, reason);
}
