
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_driver_ops {scalar_t__ opcode; } ;
typedef scalar_t__ __u16 ;



__attribute__((used)) static struct nci_driver_ops *ops_cmd_lookup(struct nci_driver_ops *ops,
          size_t n_ops,
          __u16 opcode)
{
 size_t i;
 struct nci_driver_ops *op;

 if (!ops || !n_ops)
  return ((void*)0);

 for (i = 0; i < n_ops; i++) {
  op = &ops[i];
  if (op->opcode == opcode)
   return op;
 }

 return ((void*)0);
}
