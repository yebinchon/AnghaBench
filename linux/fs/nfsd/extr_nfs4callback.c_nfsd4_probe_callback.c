
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_cb_null; int cl_flags; int cl_cb_state; } ;


 int NFSD4_CB_UNKNOWN ;
 int NFSD4_CLIENT_CB_UPDATE ;
 int nfsd4_run_cb (int *) ;
 int set_bit (int ,int *) ;

void nfsd4_probe_callback(struct nfs4_client *clp)
{
 clp->cl_cb_state = NFSD4_CB_UNKNOWN;
 set_bit(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags);
 nfsd4_run_cb(&clp->cl_cb_null);
}
