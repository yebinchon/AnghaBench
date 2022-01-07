
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_msg_header {int tid; } ;
struct ceph_msg {int dummy; } ;
struct ceph_mon_generic_request {int reply; } ;
struct ceph_mon_client {int mutex; int generic_request_tree; } ;
struct ceph_connection {struct ceph_mon_client* private; } ;


 struct ceph_msg* ceph_msg_get (int ) ;
 int dout (char*,int ,...) ;
 int le64_to_cpu (int ) ;
 struct ceph_mon_generic_request* lookup_generic_request (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ceph_msg *get_generic_reply(struct ceph_connection *con,
      struct ceph_msg_header *hdr,
      int *skip)
{
 struct ceph_mon_client *monc = con->private;
 struct ceph_mon_generic_request *req;
 u64 tid = le64_to_cpu(hdr->tid);
 struct ceph_msg *m;

 mutex_lock(&monc->mutex);
 req = lookup_generic_request(&monc->generic_request_tree, tid);
 if (!req) {
  dout("get_generic_reply %lld dne\n", tid);
  *skip = 1;
  m = ((void*)0);
 } else {
  dout("get_generic_reply %lld got %p\n", tid, req->reply);
  *skip = 0;
  m = ceph_msg_get(req->reply);





 }
 mutex_unlock(&monc->mutex);
 return m;
}
