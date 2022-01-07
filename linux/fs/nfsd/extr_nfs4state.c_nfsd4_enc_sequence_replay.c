
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_slot {int sl_flags; } ;
struct nfsd4_op {int status; } ;
struct TYPE_2__ {struct nfsd4_slot* slot; } ;
struct nfsd4_compoundres {int opcnt; TYPE_1__ cstate; } ;
struct nfsd4_compoundargs {int opcnt; struct nfsd4_op* ops; } ;
typedef int __be32 ;


 int NFSD4_SLOT_CACHED ;
 int nfsd4_encode_operation (struct nfsd4_compoundres*,struct nfsd4_op*) ;
 int nfserr_retry_uncached_rep ;
 int nfserr_seq_false_retry ;

__attribute__((used)) static __be32
nfsd4_enc_sequence_replay(struct nfsd4_compoundargs *args,
     struct nfsd4_compoundres *resp)
{
 struct nfsd4_op *op;
 struct nfsd4_slot *slot = resp->cstate.slot;


 op = &args->ops[resp->opcnt - 1];
 nfsd4_encode_operation(resp, op);

 if (slot->sl_flags & NFSD4_SLOT_CACHED)
  return op->status;
 if (args->opcnt == 1) {





  op->status = nfserr_seq_false_retry;
 } else {
  op = &args->ops[resp->opcnt++];
  op->status = nfserr_retry_uncached_rep;
  nfsd4_encode_operation(resp, op);
 }
 return op->status;
}
