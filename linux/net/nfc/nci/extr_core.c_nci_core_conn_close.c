
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nci_dev {int cur_conn_id; } ;


 int NCI_CMD_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_core_conn_close_req ;

int nci_core_conn_close(struct nci_dev *ndev, u8 conn_id)
{
 ndev->cur_conn_id = conn_id;
 return __nci_request(ndev, nci_core_conn_close_req, conn_id,
        msecs_to_jiffies(NCI_CMD_TIMEOUT));
}
