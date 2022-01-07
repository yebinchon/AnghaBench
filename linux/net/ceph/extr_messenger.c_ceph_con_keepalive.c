
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int mutex; } ;


 int CON_FLAG_KEEPALIVE_PENDING ;
 int CON_FLAG_WRITE_PENDING ;
 int clear_standby (struct ceph_connection*) ;
 int con_flag_set (struct ceph_connection*,int ) ;
 scalar_t__ con_flag_test_and_set (struct ceph_connection*,int ) ;
 int dout (char*,struct ceph_connection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_con (struct ceph_connection*) ;

void ceph_con_keepalive(struct ceph_connection *con)
{
 dout("con_keepalive %p\n", con);
 mutex_lock(&con->mutex);
 clear_standby(con);
 con_flag_set(con, CON_FLAG_KEEPALIVE_PENDING);
 mutex_unlock(&con->mutex);

 if (con_flag_test_and_set(con, CON_FLAG_WRITE_PENDING) == 0)
  queue_con(con);
}
