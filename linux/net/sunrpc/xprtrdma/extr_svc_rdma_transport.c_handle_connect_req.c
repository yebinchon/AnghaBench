
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int xpt_flags; int xpt_remote; int xpt_net; int xpt_server; } ;
struct svcxprt_rdma {TYPE_3__ sc_xprt; int sc_lock; int sc_accept_q; struct rdma_cm_id* sc_cm_id; int sc_ord; } ;
struct sockaddr {int dummy; } ;
struct rdma_conn_param {int initiator_depth; } ;
struct TYPE_6__ {int src_addr; int dst_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; struct svcxprt_rdma* context; } ;


 int XPT_CONN ;
 int list_add_tail (int *,int *) ;
 int rpc_set_port (struct sockaddr*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int svc_addr_len (struct sockaddr*) ;
 struct svcxprt_rdma* svc_rdma_create_xprt (int ,int ) ;
 int svc_rdma_parse_connect_private (struct svcxprt_rdma*,struct rdma_conn_param*) ;
 int svc_xprt_enqueue (TYPE_3__*) ;
 int svc_xprt_set_local (TYPE_3__*,struct sockaddr*,int ) ;
 int svc_xprt_set_remote (TYPE_3__*,struct sockaddr*,int ) ;

__attribute__((used)) static void handle_connect_req(struct rdma_cm_id *new_cma_id,
          struct rdma_conn_param *param)
{
 struct svcxprt_rdma *listen_xprt = new_cma_id->context;
 struct svcxprt_rdma *newxprt;
 struct sockaddr *sa;


 newxprt = svc_rdma_create_xprt(listen_xprt->sc_xprt.xpt_server,
           listen_xprt->sc_xprt.xpt_net);
 if (!newxprt)
  return;
 newxprt->sc_cm_id = new_cma_id;
 new_cma_id->context = newxprt;
 svc_rdma_parse_connect_private(newxprt, param);


 newxprt->sc_ord = param->initiator_depth;

 sa = (struct sockaddr *)&newxprt->sc_cm_id->route.addr.dst_addr;
 svc_xprt_set_remote(&newxprt->sc_xprt, sa, svc_addr_len(sa));




 rpc_set_port((struct sockaddr *)&newxprt->sc_xprt.xpt_remote, 0);

 sa = (struct sockaddr *)&newxprt->sc_cm_id->route.addr.src_addr;
 svc_xprt_set_local(&newxprt->sc_xprt, sa, svc_addr_len(sa));





 spin_lock(&listen_xprt->sc_lock);
 list_add_tail(&newxprt->sc_accept_q, &listen_xprt->sc_accept_q);
 spin_unlock(&listen_xprt->sc_lock);

 set_bit(XPT_CONN, &listen_xprt->sc_xprt.xpt_flags);
 svc_xprt_enqueue(&listen_xprt->sc_xprt);
}
