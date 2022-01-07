
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd_stateid; } ;
union nfsd4_op_u {TYPE_1__ read; } ;
struct nfsd4_compound_state {int dummy; } ;


 int get_stateid (struct nfsd4_compound_state*,int *) ;

void
nfsd4_get_readstateid(struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 get_stateid(cstate, &u->read.rd_stateid);
}
