
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_dev {int cur_conn_id; } ;
struct nci_conn_info {struct sk_buff* rx_skb; } ;


 int NCI_STATUS_OK ;
 int NCI_STATUS_REJECTED ;
 struct nci_conn_info* nci_get_conn_info_by_conn_id (struct nci_dev*,int ) ;
 int nci_req_complete (struct nci_dev*,int ) ;

__attribute__((used)) static void nci_nfcc_loopback_cb(void *context, struct sk_buff *skb, int err)
{
 struct nci_dev *ndev = (struct nci_dev *)context;
 struct nci_conn_info *conn_info;

 conn_info = nci_get_conn_info_by_conn_id(ndev, ndev->cur_conn_id);
 if (!conn_info) {
  nci_req_complete(ndev, NCI_STATUS_REJECTED);
  return;
 }

 conn_info->rx_skb = skb;

 nci_req_complete(ndev, NCI_STATUS_OK);
}
