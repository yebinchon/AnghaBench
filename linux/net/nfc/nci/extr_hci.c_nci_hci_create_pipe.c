
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nci_hci_create_pipe_resp {void* pipe; } ;
struct nci_hci_create_pipe_params {void* dest_gate; void* dest_host; int src_gate; } ;
struct nci_dev {int dummy; } ;
typedef int params ;


 int NCI_HCI_ADMIN_GATE ;
 int NCI_HCI_ADM_CREATE_PIPE ;
 void* NCI_HCI_INVALID_PIPE ;
 int kfree_skb (struct sk_buff*) ;
 int nci_hci_send_cmd (struct nci_dev*,int ,int ,void**,int,struct sk_buff**) ;
 int pr_debug (char*,void*) ;

__attribute__((used)) static u8 nci_hci_create_pipe(struct nci_dev *ndev, u8 dest_host,
         u8 dest_gate, int *result)
{
 u8 pipe;
 struct sk_buff *skb;
 struct nci_hci_create_pipe_params params;
 struct nci_hci_create_pipe_resp *resp;

 pr_debug("gate=%d\n", dest_gate);

 params.src_gate = NCI_HCI_ADMIN_GATE;
 params.dest_host = dest_host;
 params.dest_gate = dest_gate;

 *result = nci_hci_send_cmd(ndev, NCI_HCI_ADMIN_GATE,
       NCI_HCI_ADM_CREATE_PIPE,
       (u8 *)&params, sizeof(params), &skb);
 if (*result < 0)
  return NCI_HCI_INVALID_PIPE;

 resp = (struct nci_hci_create_pipe_resp *)skb->data;
 pipe = resp->pipe;
 kfree_skb(skb);

 pr_debug("pipe created=%d\n", pipe);

 return pipe;
}
