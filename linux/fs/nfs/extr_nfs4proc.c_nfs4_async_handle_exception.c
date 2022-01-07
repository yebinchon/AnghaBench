
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_server {int mig_status; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_rpcwaitq; int cl_state; } ;
struct nfs4_exception {int retry; scalar_t__ recovering; int timeout; scalar_t__ delay; } ;


 int EIO ;
 int NFS4CLNT_MANAGER_RUNNING ;
 int NFS4ERR_MOVED ;
 int NFS_MIG_FAILED ;
 int nfs4_do_handle_exception (struct nfs_server*,int,struct nfs4_exception*) ;
 int nfs4_update_delay (int *) ;
 int rpc_delay (struct rpc_task*,int ) ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int rpc_task_release_transport (struct rpc_task*) ;
 int rpc_wake_up_queued_task (int *,struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
nfs4_async_handle_exception(struct rpc_task *task, struct nfs_server *server,
  int errorcode, struct nfs4_exception *exception)
{
 struct nfs_client *clp = server->nfs_client;
 int ret;

 ret = nfs4_do_handle_exception(server, errorcode, exception);
 if (exception->delay) {
  rpc_delay(task, nfs4_update_delay(&exception->timeout));
  goto out_retry;
 }
 if (exception->recovering) {
  rpc_sleep_on(&clp->cl_rpcwaitq, task, ((void*)0));
  if (test_bit(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) == 0)
   rpc_wake_up_queued_task(&clp->cl_rpcwaitq, task);
  goto out_retry;
 }
 if (test_bit(NFS_MIG_FAILED, &server->mig_status))
  ret = -EIO;
 return ret;
out_retry:
 if (ret == 0) {
  exception->retry = 1;




  if (errorcode == -NFS4ERR_MOVED)
   rpc_task_release_transport(task);
 }
 return ret;
}
