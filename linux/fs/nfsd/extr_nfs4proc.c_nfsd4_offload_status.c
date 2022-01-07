
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_offload_status {int count; int stateid; } ;
union nfsd4_op_u {struct nfsd4_offload_status offload_status; } ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int wr_bytes_written; } ;
struct nfsd4_copy {TYPE_1__ cp_res; } ;
struct nfsd4_compound_state {struct nfs4_client* clp; } ;
struct nfs4_client {int dummy; } ;
typedef int __be32 ;


 struct nfsd4_copy* find_async_copy (struct nfs4_client*,int *) ;
 int nfs4_put_copy (struct nfsd4_copy*) ;
 int nfserr_bad_stateid ;

__attribute__((used)) static __be32
nfsd4_offload_status(struct svc_rqst *rqstp,
       struct nfsd4_compound_state *cstate,
       union nfsd4_op_u *u)
{
 struct nfsd4_offload_status *os = &u->offload_status;
 __be32 status = 0;
 struct nfsd4_copy *copy;
 struct nfs4_client *clp = cstate->clp;

 copy = find_async_copy(clp, &os->stateid);
 if (copy) {
  os->count = copy->cp_res.wr_bytes_written;
  nfs4_put_copy(copy);
 } else
  status = nfserr_bad_stateid;

 return status;
}
