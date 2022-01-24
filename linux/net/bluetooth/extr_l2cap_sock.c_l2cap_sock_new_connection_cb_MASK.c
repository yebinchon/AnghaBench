#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct l2cap_chan {struct sock* data; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_L2CAP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 struct sock* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static struct l2cap_chan *FUNC10(struct l2cap_chan *chan)
{
	struct sock *sk, *parent = chan->data;

	FUNC6(parent);

	/* Check for backlog size */
	if (FUNC8(parent)) {
		FUNC0("backlog full %d", parent->sk_ack_backlog);
		FUNC7(parent);
		return NULL;
	}

	sk = FUNC4(FUNC9(parent), NULL, BTPROTO_L2CAP,
			      GFP_ATOMIC, 0);
	if (!sk) {
		FUNC7(parent);
		return NULL;
        }

	FUNC2(sk, BTPROTO_L2CAP);

	FUNC5(sk, parent);

	FUNC1(parent, sk, false);

	FUNC7(parent);

	return FUNC3(sk)->chan;
}