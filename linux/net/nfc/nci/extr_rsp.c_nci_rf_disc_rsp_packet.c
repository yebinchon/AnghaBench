
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__* data; } ;
struct nci_dev {struct nci_conn_info* rf_conn_info; int conn_info_list; TYPE_1__* nfc_dev; int state; } ;
struct nci_conn_info {int list; int conn_id; } ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NCI_DISCOVERY ;
 int NCI_STATIC_RF_CONN_ID ;
 scalar_t__ NCI_STATUS_OK ;
 scalar_t__ NCI_STATUS_REJECTED ;
 int atomic_set (int *,int ) ;
 struct nci_conn_info* devm_kzalloc (int *,int,int ) ;
 int list_add (int *,int *) ;
 int nci_req_complete (struct nci_dev*,scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static void nci_rf_disc_rsp_packet(struct nci_dev *ndev, struct sk_buff *skb)
{
 struct nci_conn_info *conn_info;
 __u8 status = skb->data[0];

 pr_debug("status 0x%x\n", status);

 if (status == NCI_STATUS_OK) {
  atomic_set(&ndev->state, NCI_DISCOVERY);

  conn_info = ndev->rf_conn_info;
  if (!conn_info) {
   conn_info = devm_kzalloc(&ndev->nfc_dev->dev,
       sizeof(struct nci_conn_info),
       GFP_KERNEL);
   if (!conn_info) {
    status = NCI_STATUS_REJECTED;
    goto exit;
   }
   conn_info->conn_id = NCI_STATIC_RF_CONN_ID;
   INIT_LIST_HEAD(&conn_info->list);
   list_add(&conn_info->list, &ndev->conn_info_list);
   ndev->rf_conn_info = conn_info;
  }
 }

exit:
 nci_req_complete(ndev, status);
}
