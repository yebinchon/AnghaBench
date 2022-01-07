
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_fh {int fh_handle; } ;
struct nfsd4_open {TYPE_3__* op_openowner; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_4__ {int rp_openfh; } ;
struct TYPE_5__ {TYPE_1__ so_replay; } ;
struct TYPE_6__ {TYPE_2__ oo_owner; } ;


 int fh_copy_shallow (int *,int *) ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;

__attribute__((used)) static void nfsd4_set_open_owner_reply_cache(struct nfsd4_compound_state *cstate, struct nfsd4_open *open, struct svc_fh *resfh)
{
 if (nfsd4_has_session(cstate))
  return;
 fh_copy_shallow(&open->op_openowner->oo_owner.so_replay.rp_openfh,
   &resfh->fh_handle);
}
