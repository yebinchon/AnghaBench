
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_cb_state; int cl_flags; } ;


 int NFSD4_CB_FAULT ;
 int NFSD4_CLIENT_CB_UPDATE ;
 scalar_t__ test_bit (int ,int *) ;
 int warn_no_callback_path (struct nfs4_client*,int) ;

__attribute__((used)) static void nfsd4_mark_cb_fault(struct nfs4_client *clp, int reason)
{
 if (test_bit(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags))
  return;
 clp->cl_cb_state = NFSD4_CB_FAULT;
 warn_no_callback_path(clp, reason);
}
