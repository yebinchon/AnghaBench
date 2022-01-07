
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;
struct hcp_exec_waiter {int exec_complete; scalar_t__ exec_result; struct sk_buff* result_skb; int * wq; } ;


 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int MAX_FWI ;
 int NFC_HCI_HCP_COMMAND ;
 int ew_wq ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_execute_cb ;
 scalar_t__ nfc_hci_hcp_message_tx (struct nfc_hci_dev*,int ,int ,int ,int const*,size_t,int ,struct hcp_exec_waiter*,int ) ;
 int pr_debug (char*,int ,int ,size_t) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int nfc_hci_execute_cmd(struct nfc_hci_dev *hdev, u8 pipe, u8 cmd,
          const u8 *param, size_t param_len,
          struct sk_buff **skb)
{
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(ew_wq);
 struct hcp_exec_waiter hcp_ew;
 hcp_ew.wq = &ew_wq;
 hcp_ew.exec_complete = 0;
 hcp_ew.result_skb = ((void*)0);

 pr_debug("exec cmd sync through pipe=%d, cmd=%d, plen=%zd\n", pipe,
   cmd, param_len);




 hcp_ew.exec_result = nfc_hci_hcp_message_tx(hdev, pipe,
          NFC_HCI_HCP_COMMAND, cmd,
          param, param_len,
          nfc_hci_execute_cb, &hcp_ew,
          MAX_FWI);
 if (hcp_ew.exec_result < 0)
  return hcp_ew.exec_result;

 wait_event(ew_wq, hcp_ew.exec_complete == 1);

 if (hcp_ew.exec_result == 0) {
  if (skb)
   *skb = hcp_ew.result_skb;
  else
   kfree_skb(hcp_ew.result_skb);
 }

 return hcp_ew.exec_result;
}
