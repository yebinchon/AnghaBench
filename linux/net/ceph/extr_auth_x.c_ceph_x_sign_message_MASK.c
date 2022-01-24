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
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  sig; } ;
struct ceph_msg {TYPE_2__ footer; TYPE_1__* con; } ;
struct ceph_auth_handshake {scalar_t__ authorizer; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_3__ {int /*<<< orphan*/  msgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_FOOTER_SIGNED ; 
 int /*<<< orphan*/  NOMSGSIGN ; 
 int FUNC0 (struct ceph_x_authorizer*,struct ceph_msg*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ceph_auth_handshake *auth,
			       struct ceph_msg *msg)
{
	__le64 sig;
	int ret;

	if (FUNC1(FUNC2(msg->con->msgr), NOMSGSIGN))
		return 0;

	ret = FUNC0((struct ceph_x_authorizer *)auth->authorizer,
			     msg, &sig);
	if (ret)
		return ret;

	msg->footer.sig = sig;
	msg->footer.flags |= CEPH_MSG_FOOTER_SIGNED;
	return 0;
}