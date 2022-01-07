
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_op {scalar_t__ opnum; } ;
struct TYPE_2__ {int op_flags; } ;


 TYPE_1__* OPDESC (struct nfsd4_op*) ;
 int OP_CACHEME ;
 scalar_t__ OP_ILLEGAL ;

bool nfsd4_cache_this_op(struct nfsd4_op *op)
{
 if (op->opnum == OP_ILLEGAL)
  return 0;
 return OPDESC(op)->op_flags & OP_CACHEME;
}
