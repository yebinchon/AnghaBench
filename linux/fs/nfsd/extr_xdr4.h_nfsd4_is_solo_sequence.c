
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd4_compoundres {int opcnt; TYPE_1__* rqstp; } ;
struct nfsd4_compoundargs {TYPE_2__* ops; } ;
struct TYPE_4__ {scalar_t__ opnum; } ;
struct TYPE_3__ {struct nfsd4_compoundargs* rq_argp; } ;


 scalar_t__ OP_SEQUENCE ;

__attribute__((used)) static inline bool nfsd4_is_solo_sequence(struct nfsd4_compoundres *resp)
{
 struct nfsd4_compoundargs *args = resp->rqstp->rq_argp;
 return resp->opcnt == 1 && args->ops[0].opnum == OP_SEQUENCE;
}
