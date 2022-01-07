
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct nci_dev {int dummy; } ;
typedef int __u8 ;


 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nci_rf_disc_map_rsp_packet(struct nci_dev *ndev,
           struct sk_buff *skb)
{
 __u8 status = skb->data[0];

 pr_debug("status 0x%x\n", status);

 nci_req_complete(ndev, status);
}
