
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union rds_ib_conn_priv {int dummy; } rds_ib_conn_priv ;
struct rds_ib_connection {int i_active_side; struct rdma_cm_id* i_cm_id; int i_flowctl; } ;
struct rds_connection {int c_proposed_version; struct rds_ib_connection* c_transport_data; } ;
struct rdma_conn_param {int dummy; } ;
struct rdma_cm_id {struct rds_connection* context; } ;


 int RDS_PROTOCOL_4_1 ;
 int UINT_MAX ;
 int rdma_connect (struct rdma_cm_id*,struct rdma_conn_param*) ;
 int rds_ib_cm_fill_conn_param (struct rds_connection*,struct rdma_conn_param*,union rds_ib_conn_priv*,int ,int ,int ,int) ;
 int rds_ib_conn_error (struct rds_connection*,char*,int) ;
 int rds_ib_set_protocol (struct rds_connection*,int ) ;
 int rds_ib_setup_qp (struct rds_connection*) ;
 int rds_ib_sysctl_flow_control ;

int rds_ib_cm_initiate_connect(struct rdma_cm_id *cm_id, bool isv6)
{
 struct rds_connection *conn = cm_id->context;
 struct rds_ib_connection *ic = conn->c_transport_data;
 struct rdma_conn_param conn_param;
 union rds_ib_conn_priv dp;
 int ret;



 rds_ib_set_protocol(conn, RDS_PROTOCOL_4_1);
 ic->i_flowctl = rds_ib_sysctl_flow_control;

 ret = rds_ib_setup_qp(conn);
 if (ret) {
  rds_ib_conn_error(conn, "rds_ib_setup_qp failed (%d)\n", ret);
  goto out;
 }

 rds_ib_cm_fill_conn_param(conn, &conn_param, &dp,
      conn->c_proposed_version,
      UINT_MAX, UINT_MAX, isv6);
 ret = rdma_connect(cm_id, &conn_param);
 if (ret)
  rds_ib_conn_error(conn, "rdma_connect failed (%d)\n", ret);

out:



 if (ret) {
  if (ic->i_cm_id == cm_id)
   ret = 0;
 }
 ic->i_active_side = 1;
 return ret;
}
