
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_lock; int cl_cb_conn; int cl_cb_state; } ;
struct nfs4_cb_conn {int dummy; } ;


 int NFSD4_CB_UNKNOWN ;
 int memcpy (int *,struct nfs4_cb_conn*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfsd4_change_callback(struct nfs4_client *clp, struct nfs4_cb_conn *conn)
{
 clp->cl_cb_state = NFSD4_CB_UNKNOWN;
 spin_lock(&clp->cl_lock);
 memcpy(&clp->cl_cb_conn, conn, sizeof(struct nfs4_cb_conn));
 spin_unlock(&clp->cl_lock);
}
