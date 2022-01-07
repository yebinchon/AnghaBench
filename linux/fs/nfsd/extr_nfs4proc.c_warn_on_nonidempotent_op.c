
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_op {int opnum; } ;
struct TYPE_2__ {int op_flags; } ;


 TYPE_1__* OPDESC (struct nfsd4_op*) ;
 int OP_MODIFIES_SOMETHING ;
 int WARN_ON_ONCE (int) ;
 int nfsd4_op_name (int ) ;
 int pr_err (char*,int ,int ) ;

void warn_on_nonidempotent_op(struct nfsd4_op *op)
{
 if (OPDESC(op)->op_flags & OP_MODIFIES_SOMETHING) {
  pr_err("unable to encode reply to nonidempotent op %d (%s)\n",
   op->opnum, nfsd4_op_name(op->opnum));
  WARN_ON_ONCE(1);
 }
}
