
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_cp_le_start_enc {int ltk; int ediv; int rand; int handle; } ;
struct hci_conn {int handle; struct hci_dev* hdev; } ;
typedef int cp ;
typedef int __u8 ;
typedef int __le64 ;
typedef int __le16 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_OP_LE_START_ENC ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_le_start_enc*) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct hci_cp_le_start_enc*,int ,int) ;

void hci_le_start_enc(struct hci_conn *conn, __le16 ediv, __le64 rand,
        __u8 ltk[16], __u8 key_size)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_cp_le_start_enc cp;

 BT_DBG("hcon %p", conn);

 memset(&cp, 0, sizeof(cp));

 cp.handle = cpu_to_le16(conn->handle);
 cp.rand = rand;
 cp.ediv = ediv;
 memcpy(cp.ltk, ltk, key_size);

 hci_send_cmd(hdev, HCI_OP_LE_START_ENC, sizeof(cp), &cp);
}
