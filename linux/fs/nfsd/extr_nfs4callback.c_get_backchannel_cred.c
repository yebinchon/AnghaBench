
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_clnt {char* cl_principal; } ;
struct TYPE_3__ {int gid; int uid; } ;
struct nfsd4_session {TYPE_1__ se_cb_sec; } ;
struct TYPE_4__ {char* cr_targ_princ; } ;
struct nfs4_client {scalar_t__ cl_minorversion; TYPE_2__ cl_cred; } ;
typedef struct cred {int gid; int uid; } const cred ;


 struct cred const* get_cred (int ) ;
 struct cred const* prepare_kernel_cred (int *) ;
 int rpc_machine_cred () ;

__attribute__((used)) static const struct cred *get_backchannel_cred(struct nfs4_client *clp, struct rpc_clnt *client, struct nfsd4_session *ses)
{
 if (clp->cl_minorversion == 0) {
  client->cl_principal = clp->cl_cred.cr_targ_princ ?
   clp->cl_cred.cr_targ_princ : "nfs";

  return get_cred(rpc_machine_cred());
 } else {
  struct cred *kcred;

  kcred = prepare_kernel_cred(((void*)0));
  if (!kcred)
   return ((void*)0);

  kcred->uid = ses->se_cb_sec.uid;
  kcred->gid = ses->se_cb_sec.gid;
  return kcred;
 }
}
