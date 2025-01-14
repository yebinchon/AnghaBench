
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nci_hcp_message {int header; } ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct nci_data {size_t pipe; size_t* data; int data_len; int cmd; int conn_id; } ;
struct nci_conn_info {struct sk_buff* rx_skb; int conn_id; } ;
struct TYPE_2__ {size_t* gate2pipe; struct nci_conn_info* conn_info; } ;


 int EADDRNOTAVAIL ;
 int EPROTO ;
 int NCI_DATA_TIMEOUT ;
 int NCI_HCI_ANY_GET_PARAMETER ;
 int NCI_HCI_HCP_COMMAND ;
 int NCI_HCI_HCP_MESSAGE_HEADER_LEN ;
 size_t NCI_HCI_INVALID_PIPE ;
 int NCI_HCP_HEADER (int ,int ) ;
 int NCI_HCP_MSG_GET_CMD (int ) ;
 int NCI_STATUS_OK ;
 int msecs_to_jiffies (int ) ;
 int nci_hci_result_to_errno (int ) ;
 int nci_hci_send_data_req ;
 int nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int pr_debug (char*,size_t,size_t) ;
 int skb_pull (struct sk_buff*,int ) ;

int nci_hci_get_param(struct nci_dev *ndev, u8 gate, u8 idx,
        struct sk_buff **skb)
{
 struct nci_hcp_message *message;
 struct nci_conn_info *conn_info;
 struct nci_data data;
 int r;
 u8 pipe = ndev->hci_dev->gate2pipe[gate];

 pr_debug("idx=%d to gate %d\n", idx, gate);

 if (pipe == NCI_HCI_INVALID_PIPE)
  return -EADDRNOTAVAIL;

 conn_info = ndev->hci_dev->conn_info;
 if (!conn_info)
  return -EPROTO;

 data.conn_id = conn_info->conn_id;
 data.pipe = pipe;
 data.cmd = NCI_HCP_HEADER(NCI_HCI_HCP_COMMAND,
      NCI_HCI_ANY_GET_PARAMETER);
 data.data = &idx;
 data.data_len = 1;

 r = nci_request(ndev, nci_hci_send_data_req, (unsigned long)&data,
   msecs_to_jiffies(NCI_DATA_TIMEOUT));

 if (r == NCI_STATUS_OK) {
  message = (struct nci_hcp_message *)conn_info->rx_skb->data;
  r = nci_hci_result_to_errno(
   NCI_HCP_MSG_GET_CMD(message->header));
  skb_pull(conn_info->rx_skb, NCI_HCI_HCP_MESSAGE_HEADER_LEN);

  if (!r && skb)
   *skb = conn_info->rx_skb;
 }

 return r;
}
