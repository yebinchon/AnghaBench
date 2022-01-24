#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ceph_x_authorizer {int dummy; } ;
struct TYPE_4__ {scalar_t__ sig; int flags; } ;
struct ceph_msg {TYPE_2__ footer; TYPE_1__* con; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
typedef  scalar_t__ __le64 ;
struct TYPE_3__ {int /*<<< orphan*/  msgr; } ;

/* Variables and functions */
 int CEPH_MSG_FOOTER_SIGNED ; 
 int EBADMSG ; 
 int /*<<< orphan*/  NOMSGSIGN ; 
 int FUNC0 (struct ceph_x_authorizer*,struct ceph_msg*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_msg*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ceph_auth_handshake *auth,
					  struct ceph_msg *msg)
{
	__le64 sig_check;
	int ret;

	if (FUNC1(FUNC3(msg->con->msgr), NOMSGSIGN))
		return 0;

	ret = FUNC0((struct ceph_x_authorizer *)auth->authorizer,
			     msg, &sig_check);
	if (ret)
		return ret;
	if (sig_check == msg->footer.sig)
		return 0;
	if (msg->footer.flags & CEPH_MSG_FOOTER_SIGNED)
		FUNC2("ceph_x_check_message_signature %p has signature %llx "
		     "expect %llx\n", msg, msg->footer.sig, sig_check);
	else
		FUNC2("ceph_x_check_message_signature %p sender did not set "
		     "CEPH_MSG_FOOTER_SIGNED\n", msg);
	return -EBADMSG;
}