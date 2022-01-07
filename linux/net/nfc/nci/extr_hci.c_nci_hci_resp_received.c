
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct nci_conn_info {struct sk_buff* rx_skb; } ;
struct TYPE_2__ {struct nci_conn_info* conn_info; } ;


 int NCI_STATUS_OK ;
 int NCI_STATUS_REJECTED ;
 int nci_req_complete (struct nci_dev*,int ) ;

__attribute__((used)) static void nci_hci_resp_received(struct nci_dev *ndev, u8 pipe,
      u8 result, struct sk_buff *skb)
{
 struct nci_conn_info *conn_info;
 u8 status = result;

 conn_info = ndev->hci_dev->conn_info;
 if (!conn_info) {
  status = NCI_STATUS_REJECTED;
  goto exit;
 }

 conn_info->rx_skb = skb;

exit:
 nci_req_complete(ndev, NCI_STATUS_OK);
}
