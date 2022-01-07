
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msgpool {int name; } ;
struct ceph_msg {int * pool; } ;


 int ceph_msg_put (struct ceph_msg*) ;
 int dout (char*,int ,struct ceph_msg*) ;

__attribute__((used)) static void msgpool_free(void *element, void *arg)
{
 struct ceph_msgpool *pool = arg;
 struct ceph_msg *msg = element;

 dout("msgpool_release %s %p\n", pool->name, msg);
 msg->pool = ((void*)0);
 ceph_msg_put(msg);
}
