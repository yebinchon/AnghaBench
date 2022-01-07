
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int sk; } ;
struct rds_tcp_desc_arg {int gfp; struct rds_conn_path* conn_path; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_conn_path {struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_4__ {struct rds_tcp_desc_arg* data; } ;
struct TYPE_5__ {int error; int count; TYPE_1__ arg; } ;
typedef TYPE_2__ read_descriptor_t ;
typedef int gfp_t ;


 int rds_tcp_data_recv ;
 int rdsdebug (char*,struct rds_tcp_connection*,int ,int) ;
 int tcp_read_sock (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int rds_tcp_read_sock(struct rds_conn_path *cp, gfp_t gfp)
{
 struct rds_tcp_connection *tc = cp->cp_transport_data;
 struct socket *sock = tc->t_sock;
 read_descriptor_t desc;
 struct rds_tcp_desc_arg arg;


 arg.conn_path = cp;
 arg.gfp = gfp;
 desc.arg.data = &arg;
 desc.error = 0;
 desc.count = 1;

 tcp_read_sock(sock->sk, &desc, rds_tcp_data_recv);
 rdsdebug("tcp_read_sock for tc %p gfp 0x%x returned %d\n", tc, gfp,
   desc.error);

 return desc.error;
}
