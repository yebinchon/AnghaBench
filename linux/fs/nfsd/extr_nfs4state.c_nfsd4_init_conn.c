
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_session {int se_client; } ;
struct nfsd4_conn {int cn_xpt_user; } ;


 int nfsd4_conn_lost (int *) ;
 int nfsd4_hash_conn (struct nfsd4_conn*,struct nfsd4_session*) ;
 int nfsd4_probe_callback_sync (int ) ;
 int nfsd4_register_conn (struct nfsd4_conn*) ;

__attribute__((used)) static void nfsd4_init_conn(struct svc_rqst *rqstp, struct nfsd4_conn *conn, struct nfsd4_session *ses)
{
 int ret;

 nfsd4_hash_conn(conn, ses);
 ret = nfsd4_register_conn(conn);
 if (ret)

  nfsd4_conn_lost(&conn->cn_xpt_user);

 nfsd4_probe_callback_sync(ses->se_client);
}
