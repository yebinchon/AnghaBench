
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__* data; } ;
struct TYPE_6__ {scalar_t__ id; int protocol; } ;
struct nci_dev {TYPE_4__* nfc_dev; TYPE_3__* hci_dev; TYPE_2__ cur_params; int conn_info_list; int cur_dest_type; } ;
struct nci_core_conn_create_rsp {int credits_cnt; int max_ctrl_pkt_payload_len; int conn_id; } ;
struct nci_conn_info {int credits_cnt; int max_pkt_payload_len; int conn_id; int list; TYPE_1__* dest_params; int dest_type; } ;
struct dest_spec_params {int dummy; } ;
typedef scalar_t__ __u8 ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {scalar_t__ nfcee_id; struct nci_conn_info* conn_info; } ;
struct TYPE_5__ {scalar_t__ id; int protocol; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NCI_STATUS_OK ;
 scalar_t__ NCI_STATUS_REJECTED ;
 int atomic_set (int *,int ) ;
 int devm_kfree (int *,struct nci_conn_info*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int list_add (int *,int *) ;
 int nci_req_complete (struct nci_dev*,scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static void nci_core_conn_create_rsp_packet(struct nci_dev *ndev,
         struct sk_buff *skb)
{
 __u8 status = skb->data[0];
 struct nci_conn_info *conn_info = ((void*)0);
 struct nci_core_conn_create_rsp *rsp;

 pr_debug("status 0x%x\n", status);

 if (status == NCI_STATUS_OK) {
  rsp = (struct nci_core_conn_create_rsp *)skb->data;

  conn_info = devm_kzalloc(&ndev->nfc_dev->dev,
      sizeof(*conn_info), GFP_KERNEL);
  if (!conn_info) {
   status = NCI_STATUS_REJECTED;
   goto exit;
  }

  conn_info->dest_params = devm_kzalloc(&ndev->nfc_dev->dev,
      sizeof(struct dest_spec_params),
      GFP_KERNEL);
  if (!conn_info->dest_params) {
   status = NCI_STATUS_REJECTED;
   goto free_conn_info;
  }

  conn_info->dest_type = ndev->cur_dest_type;
  conn_info->dest_params->id = ndev->cur_params.id;
  conn_info->dest_params->protocol = ndev->cur_params.protocol;
  conn_info->conn_id = rsp->conn_id;





  INIT_LIST_HEAD(&conn_info->list);
  list_add(&conn_info->list, &ndev->conn_info_list);

  if (ndev->cur_params.id == ndev->hci_dev->nfcee_id)
   ndev->hci_dev->conn_info = conn_info;

  conn_info->conn_id = rsp->conn_id;
  conn_info->max_pkt_payload_len = rsp->max_ctrl_pkt_payload_len;
  atomic_set(&conn_info->credits_cnt, rsp->credits_cnt);
 }

free_conn_info:
 if (status == NCI_STATUS_REJECTED)
  devm_kfree(&ndev->nfc_dev->dev, conn_info);
exit:

 nci_req_complete(ndev, status);
}
