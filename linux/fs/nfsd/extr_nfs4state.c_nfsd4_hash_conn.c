
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfsd4_conn {int dummy; } ;
struct nfs4_client {int cl_lock; } ;


 int __nfsd4_hash_conn (struct nfsd4_conn*,struct nfsd4_session*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfsd4_hash_conn(struct nfsd4_conn *conn, struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;

 spin_lock(&clp->cl_lock);
 __nfsd4_hash_conn(conn, ses);
 spin_unlock(&clp->cl_lock);
}
