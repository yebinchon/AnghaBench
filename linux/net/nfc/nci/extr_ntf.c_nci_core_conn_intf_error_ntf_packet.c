
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nci_dev {int flags; } ;
struct nci_core_intf_error_ntf {int conn_id; int status; } ;


 int EIO ;
 int NCI_DATA_EXCHANGE ;
 int nci_conn_id (int *) ;
 int nci_data_exchange_complete (struct nci_dev*,int *,int ,int ) ;
 int pr_debug (char*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nci_core_conn_intf_error_ntf_packet(struct nci_dev *ndev,
      struct sk_buff *skb)
{
 struct nci_core_intf_error_ntf *ntf = (void *) skb->data;

 ntf->conn_id = nci_conn_id(&ntf->conn_id);

 pr_debug("status 0x%x, conn_id %d\n", ntf->status, ntf->conn_id);


 if (test_bit(NCI_DATA_EXCHANGE, &ndev->flags))
  nci_data_exchange_complete(ndev, ((void*)0), ntf->conn_id, -EIO);
}
