
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nci_dev {int dummy; } ;
struct nci_core_set_config_rsp {int status; } ;


 int nci_req_complete (struct nci_dev*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void nci_core_set_config_rsp_packet(struct nci_dev *ndev,
        struct sk_buff *skb)
{
 struct nci_core_set_config_rsp *rsp = (void *) skb->data;

 pr_debug("status 0x%x\n", rsp->status);

 nci_req_complete(ndev, rsp->status);
}
