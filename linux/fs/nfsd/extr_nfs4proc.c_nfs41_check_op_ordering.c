
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_op {scalar_t__ status; size_t opnum; } ;
struct nfsd4_compoundargs {scalar_t__ minorversion; int opcnt; struct nfsd4_op* ops; } ;
typedef int __be32 ;
struct TYPE_2__ {int op_flags; } ;


 int ALLOWED_AS_FIRST_OP ;
 size_t OP_SEQUENCE ;
 int nfs_ok ;
 TYPE_1__* nfsd4_ops ;
 int nfserr_not_only_op ;
 scalar_t__ nfserr_op_illegal ;
 int nfserr_op_not_in_session ;

__attribute__((used)) static __be32 nfs41_check_op_ordering(struct nfsd4_compoundargs *args)
{
 struct nfsd4_op *first_op = &args->ops[0];


 if (args->minorversion == 0)
  return nfs_ok;

 if (args->opcnt == 0)
  return nfs_ok;
 if (first_op->status == nfserr_op_illegal)
  return nfs_ok;
 if (!(nfsd4_ops[first_op->opnum].op_flags & ALLOWED_AS_FIRST_OP))
  return nfserr_op_not_in_session;
 if (first_op->opnum == OP_SEQUENCE)
  return nfs_ok;





 if (args->opcnt != 1)
  return nfserr_not_only_op;
 return nfs_ok;
}
