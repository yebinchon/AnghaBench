
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct nci_dev {int state; } ;
typedef int __u8 ;


 scalar_t__ NCI_W4_HOST_SELECT ;
 scalar_t__ atomic_read (int *) ;
 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nci_core_generic_error_ntf_packet(struct nci_dev *ndev,
           struct sk_buff *skb)
{
 __u8 status = skb->data[0];

 pr_debug("status 0x%x\n", status);

 if (atomic_read(&ndev->state) == NCI_W4_HOST_SELECT) {


  nci_req_complete(ndev, status);
 }
}
