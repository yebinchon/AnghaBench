
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct nlm_host {int h_cred; struct rpc_clnt* h_rpcclnt; int h_nsmhandle; int h_hash; int h_name; int net; } ;
struct lockd_net {int nrhosts; } ;


 int dprintk (char*,int ) ;
 int hlist_del_init (int *) ;
 int kfree (struct nlm_host*) ;
 int lockd_net_id ;
 struct lockd_net* net_generic (int ,int ) ;
 int nrhosts ;
 int nsm_release (int ) ;
 int nsm_unmonitor (struct nlm_host*) ;
 int put_cred (int ) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

__attribute__((used)) static void nlm_destroy_host_locked(struct nlm_host *host)
{
 struct rpc_clnt *clnt;
 struct lockd_net *ln = net_generic(host->net, lockd_net_id);

 dprintk("lockd: destroy host %s\n", host->h_name);

 hlist_del_init(&host->h_hash);

 nsm_unmonitor(host);
 nsm_release(host->h_nsmhandle);

 clnt = host->h_rpcclnt;
 if (clnt != ((void*)0))
  rpc_shutdown_client(clnt);
 put_cred(host->h_cred);
 kfree(host);

 ln->nrhosts--;
 nrhosts--;
}
