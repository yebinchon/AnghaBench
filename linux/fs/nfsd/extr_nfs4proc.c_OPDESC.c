
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_operation {int dummy; } ;
struct nfsd4_op {size_t opnum; } ;


 struct nfsd4_operation const* nfsd4_ops ;

const struct nfsd4_operation *OPDESC(struct nfsd4_op *op)
{
 return &nfsd4_ops[op->opnum];
}
