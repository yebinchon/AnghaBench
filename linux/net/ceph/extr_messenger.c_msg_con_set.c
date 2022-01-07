
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg {struct ceph_connection* con; } ;
struct ceph_connection {TYPE_1__* ops; } ;
struct TYPE_2__ {struct ceph_connection* (* get ) (struct ceph_connection*) ;int (* put ) (struct ceph_connection*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct ceph_connection*) ;
 struct ceph_connection* stub2 (struct ceph_connection*) ;

__attribute__((used)) static void msg_con_set(struct ceph_msg *msg, struct ceph_connection *con)
{
 if (msg->con)
  msg->con->ops->put(msg->con);

 msg->con = con ? con->ops->get(con) : ((void*)0);
 BUG_ON(msg->con != con);
}
