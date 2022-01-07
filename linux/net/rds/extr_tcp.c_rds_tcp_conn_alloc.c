
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_tcp_connection {int t_tinc_hdr_rem; int t_tcp_node_detached; int t_tcp_node; TYPE_1__* t_cpath; scalar_t__ t_tinc_data_rem; int * t_tinc; int * t_sock; int t_conn_path_lock; } ;
struct rds_header {int dummy; } ;
struct rds_connection {TYPE_1__* c_path; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct rds_tcp_connection* cp_transport_data; } ;


 int ENOMEM ;
 int RDS_MPATH_WORKERS ;
 struct rds_tcp_connection* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int rds_tcp_conn_free (struct rds_tcp_connection*) ;
 int rds_tcp_conn_list ;
 int rds_tcp_conn_lock ;
 int rds_tcp_conn_slab ;
 int rdsdebug (char*,int,struct rds_tcp_connection*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rds_tcp_conn_alloc(struct rds_connection *conn, gfp_t gfp)
{
 struct rds_tcp_connection *tc;
 int i, j;
 int ret = 0;

 for (i = 0; i < RDS_MPATH_WORKERS; i++) {
  tc = kmem_cache_alloc(rds_tcp_conn_slab, gfp);
  if (!tc) {
   ret = -ENOMEM;
   goto fail;
  }
  mutex_init(&tc->t_conn_path_lock);
  tc->t_sock = ((void*)0);
  tc->t_tinc = ((void*)0);
  tc->t_tinc_hdr_rem = sizeof(struct rds_header);
  tc->t_tinc_data_rem = 0;

  conn->c_path[i].cp_transport_data = tc;
  tc->t_cpath = &conn->c_path[i];
  tc->t_tcp_node_detached = 1;

  rdsdebug("rds_conn_path [%d] tc %p\n", i,
    conn->c_path[i].cp_transport_data);
 }
 spin_lock_irq(&rds_tcp_conn_lock);
 for (i = 0; i < RDS_MPATH_WORKERS; i++) {
  tc = conn->c_path[i].cp_transport_data;
  tc->t_tcp_node_detached = 0;
  list_add_tail(&tc->t_tcp_node, &rds_tcp_conn_list);
 }
 spin_unlock_irq(&rds_tcp_conn_lock);
fail:
 if (ret) {
  for (j = 0; j < i; j++)
   rds_tcp_conn_free(conn->c_path[j].cp_transport_data);
 }
 return ret;
}
