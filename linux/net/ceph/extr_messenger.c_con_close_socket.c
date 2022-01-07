
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ceph_connection {TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* shutdown ) (TYPE_2__*,int ) ;} ;


 int CON_FLAG_SOCK_CLOSED ;
 int SHUT_RDWR ;
 int con_flag_clear (struct ceph_connection*,int ) ;
 int con_sock_state_closed (struct ceph_connection*) ;
 int dout (char*,struct ceph_connection*,TYPE_2__*) ;
 int sock_release (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int con_close_socket(struct ceph_connection *con)
{
 int rc = 0;

 dout("con_close_socket on %p sock %p\n", con, con->sock);
 if (con->sock) {
  rc = con->sock->ops->shutdown(con->sock, SHUT_RDWR);
  sock_release(con->sock);
  con->sock = ((void*)0);
 }







 con_flag_clear(con, CON_FLAG_SOCK_CLOSED);

 con_sock_state_closed(con);
 return rc;
}
