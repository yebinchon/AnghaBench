
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg_header {int middle_len; } ;
struct ceph_msg {int middle; int hdr; } ;
struct ceph_connection {scalar_t__ state; char* error_msg; struct ceph_msg* in_msg; struct ceph_msg_header in_hdr; int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {struct ceph_msg* (* alloc_msg ) (struct ceph_connection*,struct ceph_msg_header*,int*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ CON_STATE_OPEN ;
 int EAGAIN ;
 int ENOMEM ;
 int ceph_alloc_middle (struct ceph_connection*,struct ceph_msg*) ;
 int ceph_msg_put (struct ceph_msg*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct ceph_msg_header*,int) ;
 int msg_con_set (struct ceph_msg*,struct ceph_connection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ceph_msg* stub1 (struct ceph_connection*,struct ceph_msg_header*,int*) ;

__attribute__((used)) static int ceph_con_in_msg_alloc(struct ceph_connection *con, int *skip)
{
 struct ceph_msg_header *hdr = &con->in_hdr;
 int middle_len = le32_to_cpu(hdr->middle_len);
 struct ceph_msg *msg;
 int ret = 0;

 BUG_ON(con->in_msg != ((void*)0));
 BUG_ON(!con->ops->alloc_msg);

 mutex_unlock(&con->mutex);
 msg = con->ops->alloc_msg(con, hdr, skip);
 mutex_lock(&con->mutex);
 if (con->state != CON_STATE_OPEN) {
  if (msg)
   ceph_msg_put(msg);
  return -EAGAIN;
 }
 if (msg) {
  BUG_ON(*skip);
  msg_con_set(msg, con);
  con->in_msg = msg;
 } else {





  if (*skip)
   return 0;

  con->error_msg = "error allocating memory for incoming message";
  return -ENOMEM;
 }
 memcpy(&con->in_msg->hdr, &con->in_hdr, sizeof(con->in_hdr));

 if (middle_len && !con->in_msg->middle) {
  ret = ceph_alloc_middle(con, con->in_msg);
  if (ret < 0) {
   ceph_msg_put(con->in_msg);
   con->in_msg = ((void*)0);
  }
 }

 return ret;
}
