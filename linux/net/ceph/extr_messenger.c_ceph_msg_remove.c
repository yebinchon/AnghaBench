
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg {int list_head; } ;


 int ceph_msg_put (struct ceph_msg*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void ceph_msg_remove(struct ceph_msg *msg)
{
 list_del_init(&msg->list_head);

 ceph_msg_put(msg);
}
