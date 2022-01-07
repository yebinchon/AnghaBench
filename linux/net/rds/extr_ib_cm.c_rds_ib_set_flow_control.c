
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rds_ib_connection {int i_flowctl; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;


 int rds_ib_send_add_credits (struct rds_connection*,scalar_t__) ;
 scalar_t__ rds_ib_sysctl_flow_control ;

__attribute__((used)) static void rds_ib_set_flow_control(struct rds_connection *conn, u32 credits)
{
 struct rds_ib_connection *ic = conn->c_transport_data;

 if (rds_ib_sysctl_flow_control && credits != 0) {

  ic->i_flowctl = 1;
  rds_ib_send_add_credits(conn, credits);
 } else {
  ic->i_flowctl = 0;
 }
}
