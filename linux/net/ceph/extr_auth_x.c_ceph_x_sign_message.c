
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_x_authorizer {int dummy; } ;
struct TYPE_4__ {int flags; int sig; } ;
struct ceph_msg {TYPE_2__ footer; TYPE_1__* con; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
typedef int __le64 ;
struct TYPE_3__ {int msgr; } ;


 int CEPH_MSG_FOOTER_SIGNED ;
 int NOMSGSIGN ;
 int calc_signature (struct ceph_x_authorizer*,struct ceph_msg*,int *) ;
 scalar_t__ ceph_test_opt (int ,int ) ;
 int from_msgr (int ) ;

__attribute__((used)) static int ceph_x_sign_message(struct ceph_auth_handshake *auth,
          struct ceph_msg *msg)
{
 __le64 sig;
 int ret;

 if (ceph_test_opt(from_msgr(msg->con->msgr), NOMSGSIGN))
  return 0;

 ret = calc_signature((struct ceph_x_authorizer *)auth->authorizer,
        msg, &sig);
 if (ret)
  return ret;

 msg->footer.sig = sig;
 msg->footer.flags |= CEPH_MSG_FOOTER_SIGNED;
 return 0;
}
