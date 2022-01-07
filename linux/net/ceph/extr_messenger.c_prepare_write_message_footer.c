
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ sig; } ;
struct TYPE_5__ {int flags; } ;
struct ceph_msg {int more_to_follow; TYPE_3__ footer; TYPE_2__ old_footer; } ;
struct ceph_connection {int peer_features; int out_msg_done; int out_more; TYPE_1__* ops; struct ceph_msg* out_msg; } ;
struct TYPE_4__ {int (* sign_message ) (struct ceph_msg*) ;} ;


 int CEPH_FEATURE_MSG_AUTH ;
 int CEPH_MSG_FOOTER_COMPLETE ;
 int con_out_kvec_add (struct ceph_connection*,int ,TYPE_3__*) ;
 int dout (char*,struct ceph_connection*) ;
 int sizeof_footer (struct ceph_connection*) ;
 int stub1 (struct ceph_msg*) ;

__attribute__((used)) static void prepare_write_message_footer(struct ceph_connection *con)
{
 struct ceph_msg *m = con->out_msg;

 m->footer.flags |= CEPH_MSG_FOOTER_COMPLETE;

 dout("prepare_write_message_footer %p\n", con);
 con_out_kvec_add(con, sizeof_footer(con), &m->footer);
 if (con->peer_features & CEPH_FEATURE_MSG_AUTH) {
  if (con->ops->sign_message)
   con->ops->sign_message(m);
  else
   m->footer.sig = 0;
 } else {
  m->old_footer.flags = m->footer.flags;
 }
 con->out_more = m->more_to_follow;
 con->out_msg_done = 1;
}
