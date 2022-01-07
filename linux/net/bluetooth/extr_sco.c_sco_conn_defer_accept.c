
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hci_dev {int dummy; } ;
struct hci_cp_accept_sync_conn_req {int role; int retrans_effort; void* max_latency; void* content_format; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int bdaddr; } ;
struct hci_cp_accept_conn_req {int role; int retrans_effort; void* max_latency; void* content_format; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; int bdaddr; } ;
struct hci_conn {int pkt_type; int dst; int state; struct hci_dev* hdev; } ;
typedef int cp ;


 int BT_CONFIG ;
 int BT_DBG (char*,struct hci_conn*) ;
 int ESCO_2EV3 ;
 int HCI_OP_ACCEPT_CONN_REQ ;
 int HCI_OP_ACCEPT_SYNC_CONN_REQ ;

 int SCO_AIRMODE_MASK ;

 int bacpy (int *,int *) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_accept_sync_conn_req*) ;
 int lmp_esco_capable (struct hci_dev*) ;

__attribute__((used)) static void sco_conn_defer_accept(struct hci_conn *conn, u16 setting)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("conn %p", conn);

 conn->state = BT_CONFIG;

 if (!lmp_esco_capable(hdev)) {
  struct hci_cp_accept_conn_req cp;

  bacpy(&cp.bdaddr, &conn->dst);
  cp.role = 0x00;

  hci_send_cmd(hdev, HCI_OP_ACCEPT_CONN_REQ, sizeof(cp), &cp);
 } else {
  struct hci_cp_accept_sync_conn_req cp;

  bacpy(&cp.bdaddr, &conn->dst);
  cp.pkt_type = cpu_to_le16(conn->pkt_type);

  cp.tx_bandwidth = cpu_to_le32(0x00001f40);
  cp.rx_bandwidth = cpu_to_le32(0x00001f40);
  cp.content_format = cpu_to_le16(setting);

  switch (setting & SCO_AIRMODE_MASK) {
  case 128:
   if (conn->pkt_type & ESCO_2EV3)
    cp.max_latency = cpu_to_le16(0x0008);
   else
    cp.max_latency = cpu_to_le16(0x000D);
   cp.retrans_effort = 0x02;
   break;
  case 129:
   cp.max_latency = cpu_to_le16(0xffff);
   cp.retrans_effort = 0xff;
   break;
  }

  hci_send_cmd(hdev, HCI_OP_ACCEPT_SYNC_CONN_REQ,
        sizeof(cp), &cp);
 }
}
