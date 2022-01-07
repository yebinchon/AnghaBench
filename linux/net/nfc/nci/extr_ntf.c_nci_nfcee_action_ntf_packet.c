
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_dev {int dummy; } ;


 int pr_debug (char*) ;

__attribute__((used)) static void nci_nfcee_action_ntf_packet(struct nci_dev *ndev,
     struct sk_buff *skb)
{
 pr_debug("\n");
}
