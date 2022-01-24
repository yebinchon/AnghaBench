#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int /*<<< orphan*/  sk_err; } ;
struct rfcomm_session {int /*<<< orphan*/  mtu; int /*<<< orphan*/  state; TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  imtu; int /*<<< orphan*/  omtu; } ;

/* Variables and functions */
#define  BT_CLOSED 129 
 int /*<<< orphan*/  BT_CONNECT ; 
#define  BT_CONNECTED 128 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 struct rfcomm_session* FUNC4 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rfcomm_session *FUNC5(struct rfcomm_session *s)
{
	struct sock *sk = s->sock->sk;

	FUNC0("%p state %ld", s, s->state);

	switch (sk->sk_state) {
	case BT_CONNECTED:
		s->state = BT_CONNECT;

		/* We can adjust MTU on outgoing sessions.
		 * L2CAP MTU minus UIH header and FCS. */
		s->mtu = FUNC2(FUNC1(sk)->chan->omtu, FUNC1(sk)->chan->imtu) - 5;

		FUNC3(s, 0);
		break;

	case BT_CLOSED:
		s = FUNC4(s, sk->sk_err);
		break;
	}
	return s;
}