
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_driver_ops {int (* ntf ) (struct nci_dev*,struct sk_buff*) ;} ;
struct nci_dev {int dummy; } ;
typedef int __u16 ;


 int ENOTSUPP ;
 struct nci_driver_ops* ops_cmd_lookup (struct nci_driver_ops*,size_t,int ) ;
 int stub1 (struct nci_dev*,struct sk_buff*) ;

__attribute__((used)) static int nci_op_ntf_packet(struct nci_dev *ndev, __u16 ntf_opcode,
        struct sk_buff *skb, struct nci_driver_ops *ops,
        size_t n_ops)
{
 struct nci_driver_ops *op;

 op = ops_cmd_lookup(ops, n_ops, ntf_opcode);
 if (!op || !op->ntf)
  return -ENOTSUPP;

 return op->ntf(ndev, skb);
}
