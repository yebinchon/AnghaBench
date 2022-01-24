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
struct socket {int /*<<< orphan*/  sk; } ;
struct l2cap_chan {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct hidp_session {int dummy; } ;
struct TYPE_3__ {scalar_t__ sk_state; } ;
struct bt_sock {TYPE_1__ sk; } ;
struct TYPE_4__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int EBADFD ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOTUNIQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bt_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 struct hidp_session* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *ctrl_sock,
			       struct socket *intr_sock)
{
	struct l2cap_chan *ctrl_chan, *intr_chan;
	struct bt_sock *ctrl, *intr;
	struct hidp_session *session;

	if (!FUNC4(ctrl_sock) || !FUNC4(intr_sock))
		return -EINVAL;

	ctrl_chan = FUNC5(ctrl_sock->sk)->chan;
	intr_chan = FUNC5(intr_sock->sk)->chan;

	if (FUNC0(&ctrl_chan->src, &intr_chan->src) ||
	    FUNC0(&ctrl_chan->dst, &intr_chan->dst))
		return -ENOTUNIQ;

	ctrl = FUNC1(ctrl_sock->sk);
	intr = FUNC1(intr_sock->sk);

	if (ctrl->sk.sk_state != BT_CONNECTED ||
	    intr->sk.sk_state != BT_CONNECTED)
		return -EBADFD;

	/* early session check, we check again during session registration */
	session = FUNC2(&ctrl_chan->dst);
	if (session) {
		FUNC3(session);
		return -EEXIST;
	}

	return 0;
}