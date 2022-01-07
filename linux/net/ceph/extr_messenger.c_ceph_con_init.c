
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_messenger {int dummy; } ;
struct ceph_connection_operations {int dummy; } ;
struct ceph_connection {int state; int work; int out_sent; int out_queue; int mutex; struct ceph_messenger* msgr; struct ceph_connection_operations const* ops; void* private; } ;


 int CON_STATE_CLOSED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int ceph_con_workfn ;
 int con_sock_state_init (struct ceph_connection*) ;
 int dout (char*,struct ceph_connection*) ;
 int memset (struct ceph_connection*,int ,int) ;
 int mutex_init (int *) ;

void ceph_con_init(struct ceph_connection *con, void *private,
 const struct ceph_connection_operations *ops,
 struct ceph_messenger *msgr)
{
 dout("con_init %p\n", con);
 memset(con, 0, sizeof(*con));
 con->private = private;
 con->ops = ops;
 con->msgr = msgr;

 con_sock_state_init(con);

 mutex_init(&con->mutex);
 INIT_LIST_HEAD(&con->out_queue);
 INIT_LIST_HEAD(&con->out_sent);
 INIT_DELAYED_WORK(&con->work, ceph_con_workfn);

 con->state = CON_STATE_CLOSED;
}
