
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hcp_exec_waiter {int exec_result; int exec_complete; int wq; struct sk_buff* result_skb; } ;


 int kfree_skb (struct sk_buff*) ;
 int pr_debug (char*,int) ;
 int wake_up (int ) ;

__attribute__((used)) static void nfc_hci_execute_cb(void *context, struct sk_buff *skb, int err)
{
 struct hcp_exec_waiter *hcp_ew = (struct hcp_exec_waiter *)context;

 pr_debug("HCI Cmd completed with result=%d\n", err);

 hcp_ew->exec_result = err;
 if (hcp_ew->exec_result == 0)
  hcp_ew->result_skb = skb;
 else
  kfree_skb(skb);
 hcp_ew->exec_complete = 1;

 wake_up(hcp_ew->wq);
}
