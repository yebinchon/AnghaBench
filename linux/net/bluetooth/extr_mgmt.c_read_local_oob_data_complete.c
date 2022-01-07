
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mgmt_rp_read_local_oob_data {int rand256; int hash256; int rand192; int hash192; } ;
struct mgmt_pending_cmd {int sk; } ;
struct hci_rp_read_local_oob_ext_data {int rand256; int hash256; int rand192; int hash192; } ;
struct hci_rp_read_local_oob_data {int rand; int hash; } ;
struct hci_dev {int id; int name; } ;
typedef int mgmt_rp ;


 int BT_DBG (char*,int ,scalar_t__) ;
 scalar_t__ HCI_OP_READ_LOCAL_OOB_DATA ;
 int MGMT_OP_READ_LOCAL_OOB_DATA ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_SUCCESS ;
 int memcpy (int ,int ,int) ;
 int memset (struct mgmt_rp_read_local_oob_data*,int ,int) ;
 int mgmt_cmd_complete (int ,int ,int ,int ,struct mgmt_rp_read_local_oob_data*,size_t) ;
 int mgmt_cmd_status (int ,int ,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (scalar_t__) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;

__attribute__((used)) static void read_local_oob_data_complete(struct hci_dev *hdev, u8 status,
             u16 opcode, struct sk_buff *skb)
{
 struct mgmt_rp_read_local_oob_data mgmt_rp;
 size_t rp_size = sizeof(mgmt_rp);
 struct mgmt_pending_cmd *cmd;

 BT_DBG("%s status %u", hdev->name, status);

 cmd = pending_find(MGMT_OP_READ_LOCAL_OOB_DATA, hdev);
 if (!cmd)
  return;

 if (status || !skb) {
  mgmt_cmd_status(cmd->sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
    status ? mgmt_status(status) : MGMT_STATUS_FAILED);
  goto remove;
 }

 memset(&mgmt_rp, 0, sizeof(mgmt_rp));

 if (opcode == HCI_OP_READ_LOCAL_OOB_DATA) {
  struct hci_rp_read_local_oob_data *rp = (void *) skb->data;

  if (skb->len < sizeof(*rp)) {
   mgmt_cmd_status(cmd->sk, hdev->id,
     MGMT_OP_READ_LOCAL_OOB_DATA,
     MGMT_STATUS_FAILED);
   goto remove;
  }

  memcpy(mgmt_rp.hash192, rp->hash, sizeof(rp->hash));
  memcpy(mgmt_rp.rand192, rp->rand, sizeof(rp->rand));

  rp_size -= sizeof(mgmt_rp.hash256) + sizeof(mgmt_rp.rand256);
 } else {
  struct hci_rp_read_local_oob_ext_data *rp = (void *) skb->data;

  if (skb->len < sizeof(*rp)) {
   mgmt_cmd_status(cmd->sk, hdev->id,
     MGMT_OP_READ_LOCAL_OOB_DATA,
     MGMT_STATUS_FAILED);
   goto remove;
  }

  memcpy(mgmt_rp.hash192, rp->hash192, sizeof(rp->hash192));
  memcpy(mgmt_rp.rand192, rp->rand192, sizeof(rp->rand192));

  memcpy(mgmt_rp.hash256, rp->hash256, sizeof(rp->hash256));
  memcpy(mgmt_rp.rand256, rp->rand256, sizeof(rp->rand256));
 }

 mgmt_cmd_complete(cmd->sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
     MGMT_STATUS_SUCCESS, &mgmt_rp, rp_size);

remove:
 mgmt_pending_remove(cmd);
}
