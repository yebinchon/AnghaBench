
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int mutex; scalar_t__ peer_global_seq; int state; int peer_addr; } ;


 int CON_FLAG_BACKOFF ;
 int CON_FLAG_KEEPALIVE_PENDING ;
 int CON_FLAG_LOSSYTX ;
 int CON_FLAG_WRITE_PENDING ;
 int CON_STATE_CLOSED ;
 int cancel_con (struct ceph_connection*) ;
 int ceph_pr_addr (int *) ;
 int con_close_socket (struct ceph_connection*) ;
 int con_flag_clear (struct ceph_connection*,int ) ;
 int dout (char*,struct ceph_connection*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_connection (struct ceph_connection*) ;

void ceph_con_close(struct ceph_connection *con)
{
 mutex_lock(&con->mutex);
 dout("con_close %p peer %s\n", con, ceph_pr_addr(&con->peer_addr));
 con->state = CON_STATE_CLOSED;

 con_flag_clear(con, CON_FLAG_LOSSYTX);
 con_flag_clear(con, CON_FLAG_KEEPALIVE_PENDING);
 con_flag_clear(con, CON_FLAG_WRITE_PENDING);
 con_flag_clear(con, CON_FLAG_BACKOFF);

 reset_connection(con);
 con->peer_global_seq = 0;
 cancel_con(con);
 con_close_socket(con);
 mutex_unlock(&con->mutex);
}
