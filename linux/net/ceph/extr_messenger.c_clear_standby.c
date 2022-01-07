
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {scalar_t__ state; int connect_seq; } ;


 int CON_FLAG_KEEPALIVE_PENDING ;
 int CON_FLAG_WRITE_PENDING ;
 scalar_t__ CON_STATE_PREOPEN ;
 scalar_t__ CON_STATE_STANDBY ;
 int WARN_ON (int ) ;
 int con_flag_test (struct ceph_connection*,int ) ;
 int dout (char*,struct ceph_connection*) ;

__attribute__((used)) static void clear_standby(struct ceph_connection *con)
{

 if (con->state == CON_STATE_STANDBY) {
  dout("clear_standby %p and ++connect_seq\n", con);
  con->state = CON_STATE_PREOPEN;
  con->connect_seq++;
  WARN_ON(con_flag_test(con, CON_FLAG_WRITE_PENDING));
  WARN_ON(con_flag_test(con, CON_FLAG_KEEPALIVE_PENDING));
 }
}
