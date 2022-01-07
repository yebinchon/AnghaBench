
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {int sv_nrthreads; TYPE_1__* sv_ops; } ;
struct rpc_xprt {int dummy; } ;
struct TYPE_2__ {int (* svo_setup ) (struct svc_serv*,int *,int) ;} ;


 int NFS4_MIN_NR_CALLBACK_THREADS ;
 int dprintk (char*) ;
 int nfs_callback_bc_serv (int,struct rpc_xprt*,struct svc_serv*) ;
 int nfs_callback_nr_threads ;
 int stub1 (struct svc_serv*,int *,int) ;
 int stub2 (struct svc_serv*,int *,int) ;

__attribute__((used)) static int nfs_callback_start_svc(int minorversion, struct rpc_xprt *xprt,
      struct svc_serv *serv)
{
 int nrservs = nfs_callback_nr_threads;
 int ret;

 nfs_callback_bc_serv(minorversion, xprt, serv);

 if (nrservs < NFS4_MIN_NR_CALLBACK_THREADS)
  nrservs = NFS4_MIN_NR_CALLBACK_THREADS;

 if (serv->sv_nrthreads-1 == nrservs)
  return 0;

 ret = serv->sv_ops->svo_setup(serv, ((void*)0), nrservs);
 if (ret) {
  serv->sv_ops->svo_setup(serv, ((void*)0), 0);
  return ret;
 }
 dprintk("nfs_callback_up: service started\n");
 return 0;
}
