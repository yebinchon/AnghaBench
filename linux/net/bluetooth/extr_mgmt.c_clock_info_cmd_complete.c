
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mgmt_rp_get_clock_info {int accuracy; void* piconet_clock; void* local_clock; int addr; } ;
struct mgmt_pending_cmd {int opcode; int index; int sk; int param; struct hci_conn* user_data; } ;
struct hci_dev {int clock; } ;
struct hci_conn {int clock_accuracy; int clock; } ;
typedef int rp ;


 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int hci_conn_drop (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_put (struct hci_dev*) ;
 int memcpy (int *,int ,int) ;
 int memset (struct mgmt_rp_get_clock_info*,int ,int) ;
 int mgmt_cmd_complete (int ,int ,int ,scalar_t__,struct mgmt_rp_get_clock_info*,int) ;

__attribute__((used)) static int clock_info_cmd_complete(struct mgmt_pending_cmd *cmd, u8 status)
{
 struct hci_conn *conn = cmd->user_data;
 struct mgmt_rp_get_clock_info rp;
 struct hci_dev *hdev;
 int err;

 memset(&rp, 0, sizeof(rp));
 memcpy(&rp.addr, cmd->param, sizeof(rp.addr));

 if (status)
  goto complete;

 hdev = hci_dev_get(cmd->index);
 if (hdev) {
  rp.local_clock = cpu_to_le32(hdev->clock);
  hci_dev_put(hdev);
 }

 if (conn) {
  rp.piconet_clock = cpu_to_le32(conn->clock);
  rp.accuracy = cpu_to_le16(conn->clock_accuracy);
 }

complete:
 err = mgmt_cmd_complete(cmd->sk, cmd->index, cmd->opcode, status, &rp,
    sizeof(rp));

 if (conn) {
  hci_conn_drop(conn);
  hci_conn_put(conn);
 }

 return err;
}
