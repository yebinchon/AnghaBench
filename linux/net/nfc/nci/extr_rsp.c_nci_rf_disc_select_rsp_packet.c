
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* data; } ;
struct nci_dev {int dummy; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ NCI_STATUS_OK ;
 int nci_req_complete (struct nci_dev*,scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static void nci_rf_disc_select_rsp_packet(struct nci_dev *ndev,
       struct sk_buff *skb)
{
 __u8 status = skb->data[0];

 pr_debug("status 0x%x\n", status);


 if (status != NCI_STATUS_OK)
  nci_req_complete(ndev, status);
}
