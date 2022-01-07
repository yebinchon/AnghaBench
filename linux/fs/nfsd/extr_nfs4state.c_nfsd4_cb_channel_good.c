
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {scalar_t__ cl_cb_state; scalar_t__ cl_minorversion; } ;


 scalar_t__ NFSD4_CB_UNKNOWN ;
 scalar_t__ NFSD4_CB_UP ;

__attribute__((used)) static bool nfsd4_cb_channel_good(struct nfs4_client *clp)
{
 if (clp->cl_cb_state == NFSD4_CB_UP)
  return 1;





 return clp->cl_minorversion && clp->cl_cb_state == NFSD4_CB_UNKNOWN;
}
