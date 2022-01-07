
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nci_hci_delete_pipe_noti {size_t pipe; } ;
struct nci_hci_create_pipe_resp {size_t dest_gate; size_t pipe; int src_host; } ;
struct nci_hci_all_pipe_cleared_noti {int host; } ;
struct nci_dev {TYPE_3__* ops; TYPE_2__* hci_dev; } ;
struct TYPE_6__ {int (* hci_cmd_received ) (struct nci_dev*,size_t,size_t,struct sk_buff*) ;} ;
struct TYPE_5__ {size_t* gate2pipe; TYPE_1__* pipes; } ;
struct TYPE_4__ {size_t gate; int host; } ;





 size_t NCI_HCI_ANY_E_NOK ;
 size_t NCI_HCI_ANY_OK ;

 size_t NCI_HCI_FRAGMENT ;
 size_t NCI_HCI_INVALID_GATE ;
 int NCI_HCI_INVALID_HOST ;
 size_t NCI_HCI_MAX_PIPES ;
 int kfree_skb (struct sk_buff*) ;
 int nci_hci_reset_pipes_per_host (struct nci_dev*,int ) ;
 int nci_hci_send_data (struct nci_dev*,size_t,size_t,int *,int ) ;
 int pr_debug (char*,size_t,size_t,...) ;
 int stub1 (struct nci_dev*,size_t,size_t,struct sk_buff*) ;

__attribute__((used)) static void nci_hci_cmd_received(struct nci_dev *ndev, u8 pipe,
     u8 cmd, struct sk_buff *skb)
{
 u8 gate = ndev->hci_dev->pipes[pipe].gate;
 u8 status = NCI_HCI_ANY_OK | ~NCI_HCI_FRAGMENT;
 u8 dest_gate, new_pipe;
 struct nci_hci_create_pipe_resp *create_info;
 struct nci_hci_delete_pipe_noti *delete_info;
 struct nci_hci_all_pipe_cleared_noti *cleared_info;

 pr_debug("from gate %x pipe %x cmd %x\n", gate, pipe, cmd);

 switch (cmd) {
 case 130:
  if (skb->len != 5) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }
  create_info = (struct nci_hci_create_pipe_resp *)skb->data;
  dest_gate = create_info->dest_gate;
  new_pipe = create_info->pipe;
  if (new_pipe >= NCI_HCI_MAX_PIPES) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }






  ndev->hci_dev->gate2pipe[dest_gate] = new_pipe;
  ndev->hci_dev->pipes[new_pipe].gate = dest_gate;
  ndev->hci_dev->pipes[new_pipe].host =
      create_info->src_host;
  break;
 case 128:

  if (gate == NCI_HCI_INVALID_GATE) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }
  break;
 case 129:
  if (skb->len != 1) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }
  delete_info = (struct nci_hci_delete_pipe_noti *)skb->data;
  if (delete_info->pipe >= NCI_HCI_MAX_PIPES) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }

  ndev->hci_dev->pipes[delete_info->pipe].gate =
      NCI_HCI_INVALID_GATE;
  ndev->hci_dev->pipes[delete_info->pipe].host =
      NCI_HCI_INVALID_HOST;
  break;
 case 131:
  if (skb->len != 1) {
   status = NCI_HCI_ANY_E_NOK;
   goto exit;
  }

  cleared_info =
   (struct nci_hci_all_pipe_cleared_noti *)skb->data;
  nci_hci_reset_pipes_per_host(ndev, cleared_info->host);
  break;
 default:
  pr_debug("Discarded unknown cmd %x to gate %x\n", cmd, gate);
  break;
 }

 if (ndev->ops->hci_cmd_received)
  ndev->ops->hci_cmd_received(ndev, pipe, cmd, skb);

exit:
 nci_hci_send_data(ndev, pipe, status, ((void*)0), 0);

 kfree_skb(skb);
}
