
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
typedef int __u16 ;
struct TYPE_2__ {int n_core_ops; int core_ops; } ;


 int nci_op_rsp_packet (struct nci_dev*,int ,struct sk_buff*,int ,int ) ;

int nci_core_rsp_packet(struct nci_dev *ndev, __u16 opcode,
   struct sk_buff *skb)
{
 return nci_op_rsp_packet(ndev, opcode, skb, ndev->ops->core_ops,
      ndev->ops->n_core_ops);
}
