
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_x_authorizer {int dummy; } ;
struct TYPE_4__ {scalar_t__ sig; int flags; } ;
struct ceph_msg {TYPE_2__ footer; TYPE_1__* con; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
typedef scalar_t__ __le64 ;
struct TYPE_3__ {int msgr; } ;


 int CEPH_MSG_FOOTER_SIGNED ;
 int EBADMSG ;
 int NOMSGSIGN ;
 int calc_signature (struct ceph_x_authorizer*,struct ceph_msg*,scalar_t__*) ;
 scalar_t__ ceph_test_opt (int ,int ) ;
 int dout (char*,struct ceph_msg*,...) ;
 int from_msgr (int ) ;

__attribute__((used)) static int ceph_x_check_message_signature(struct ceph_auth_handshake *auth,
       struct ceph_msg *msg)
{
 __le64 sig_check;
 int ret;

 if (ceph_test_opt(from_msgr(msg->con->msgr), NOMSGSIGN))
  return 0;

 ret = calc_signature((struct ceph_x_authorizer *)auth->authorizer,
        msg, &sig_check);
 if (ret)
  return ret;
 if (sig_check == msg->footer.sig)
  return 0;
 if (msg->footer.flags & CEPH_MSG_FOOTER_SIGNED)
  dout("ceph_x_check_message_signature %p has signature %llx "
       "expect %llx\n", msg, msg->footer.sig, sig_check);
 else
  dout("ceph_x_check_message_signature %p sender did not set "
       "CEPH_MSG_FOOTER_SIGNED\n", msg);
 return -EBADMSG;
}
