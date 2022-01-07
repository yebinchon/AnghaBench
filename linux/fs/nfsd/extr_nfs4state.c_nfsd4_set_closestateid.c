
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_stateid; } ;
union nfsd4_op_u {TYPE_1__ close; } ;
struct nfsd4_compound_state {int dummy; } ;


 int put_stateid (struct nfsd4_compound_state*,int *) ;

void
nfsd4_set_closestateid(struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 put_stateid(cstate, &u->close.cl_stateid);
}
