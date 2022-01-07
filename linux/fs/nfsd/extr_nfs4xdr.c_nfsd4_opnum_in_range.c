
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_op {scalar_t__ opnum; } ;
struct nfsd4_compoundargs {int minorversion; } ;


 scalar_t__ FIRST_NFS4_OP ;
 scalar_t__ LAST_NFS40_OP ;
 scalar_t__ LAST_NFS41_OP ;
 scalar_t__ LAST_NFS42_OP ;

__attribute__((used)) static inline bool
nfsd4_opnum_in_range(struct nfsd4_compoundargs *argp, struct nfsd4_op *op)
{
 if (op->opnum < FIRST_NFS4_OP)
  return 0;
 else if (argp->minorversion == 0 && op->opnum > LAST_NFS40_OP)
  return 0;
 else if (argp->minorversion == 1 && op->opnum > LAST_NFS41_OP)
  return 0;
 else if (argp->minorversion == 2 && op->opnum > LAST_NFS42_OP)
  return 0;
 return 1;
}
