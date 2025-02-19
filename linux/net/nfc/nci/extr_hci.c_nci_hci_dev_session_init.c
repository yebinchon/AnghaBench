
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct nci_dev {TYPE_3__* hci_dev; TYPE_1__* ops; } ;
struct nci_conn_info {struct nci_dev* data_exchange_cb_context; int data_exchange_cb; } ;
struct TYPE_8__ {scalar_t__ gate; int pipe; int dest_host; } ;
struct TYPE_6__ {int session_id; TYPE_4__* gates; int gate_count; } ;
struct TYPE_7__ {TYPE_2__ init_data; struct nci_conn_info* conn_info; scalar_t__ expected_pipes; scalar_t__ count_pipes; } ;
struct TYPE_5__ {int (* hci_load_session ) (struct nci_dev*) ;} ;


 int EPROTO ;
 scalar_t__ NCI_HCI_ADMIN_GATE ;
 int NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY ;
 int kfree_skb (struct sk_buff*) ;
 int memcmp (int ,int ,scalar_t__) ;
 int nci_hci_clear_all_pipes (struct nci_dev*) ;
 int nci_hci_connect_gate (struct nci_dev*,int ,scalar_t__,int ) ;
 int nci_hci_data_received_cb ;
 int nci_hci_dev_connect_gates (struct nci_dev*,int ,TYPE_4__*) ;
 int nci_hci_get_param (struct nci_dev*,scalar_t__,int ,struct sk_buff**) ;
 int nci_hci_reset_pipes (TYPE_3__*) ;
 int nci_hci_set_param (struct nci_dev*,scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 int stub1 (struct nci_dev*) ;

int nci_hci_dev_session_init(struct nci_dev *ndev)
{
 struct nci_conn_info *conn_info;
 struct sk_buff *skb;
 int r;

 ndev->hci_dev->count_pipes = 0;
 ndev->hci_dev->expected_pipes = 0;

 conn_info = ndev->hci_dev->conn_info;
 if (!conn_info)
  return -EPROTO;

 conn_info->data_exchange_cb = nci_hci_data_received_cb;
 conn_info->data_exchange_cb_context = ndev;

 nci_hci_reset_pipes(ndev->hci_dev);

 if (ndev->hci_dev->init_data.gates[0].gate != NCI_HCI_ADMIN_GATE)
  return -EPROTO;

 r = nci_hci_connect_gate(ndev,
     ndev->hci_dev->init_data.gates[0].dest_host,
     ndev->hci_dev->init_data.gates[0].gate,
     ndev->hci_dev->init_data.gates[0].pipe);
 if (r < 0)
  return r;

 r = nci_hci_get_param(ndev, NCI_HCI_ADMIN_GATE,
         NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY, &skb);
 if (r < 0)
  return r;

 if (skb->len &&
     skb->len == strlen(ndev->hci_dev->init_data.session_id) &&
     !memcmp(ndev->hci_dev->init_data.session_id, skb->data, skb->len) &&
     ndev->ops->hci_load_session) {

  r = ndev->ops->hci_load_session(ndev);
 } else {
  r = nci_hci_clear_all_pipes(ndev);
  if (r < 0)
   goto exit;

  r = nci_hci_dev_connect_gates(ndev,
           ndev->hci_dev->init_data.gate_count,
           ndev->hci_dev->init_data.gates);
  if (r < 0)
   goto exit;

  r = nci_hci_set_param(ndev, NCI_HCI_ADMIN_GATE,
          NCI_HCI_ADMIN_PARAM_SESSION_IDENTITY,
          ndev->hci_dev->init_data.session_id,
          strlen(ndev->hci_dev->init_data.session_id));
 }

exit:
 kfree_skb(skb);

 return r;
}
