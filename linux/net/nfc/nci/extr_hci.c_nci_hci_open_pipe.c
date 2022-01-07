
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct nci_data {scalar_t__ data_len; int * data; int cmd; int pipe; int conn_id; } ;
struct nci_conn_info {int conn_id; } ;
struct TYPE_2__ {struct nci_conn_info* conn_info; } ;


 int EPROTO ;
 int NCI_DATA_TIMEOUT ;
 int NCI_HCI_ANY_OPEN_PIPE ;
 int NCI_HCI_HCP_COMMAND ;
 int NCI_HCP_HEADER (int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_hci_send_data_req ;
 int nci_request (struct nci_dev*,int ,unsigned long,int ) ;

int nci_hci_open_pipe(struct nci_dev *ndev, u8 pipe)
{
 struct nci_data data;
 struct nci_conn_info *conn_info;

 conn_info = ndev->hci_dev->conn_info;
 if (!conn_info)
  return -EPROTO;

 data.conn_id = conn_info->conn_id;
 data.pipe = pipe;
 data.cmd = NCI_HCP_HEADER(NCI_HCI_HCP_COMMAND,
           NCI_HCI_ANY_OPEN_PIPE);
 data.data = ((void*)0);
 data.data_len = 0;

 return nci_request(ndev, nci_hci_send_data_req,
   (unsigned long)&data,
   msecs_to_jiffies(NCI_DATA_TIMEOUT));
}
