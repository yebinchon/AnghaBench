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
struct sock {int /*<<< orphan*/  state; int /*<<< orphan*/  sk_state; } ;
struct l2cap_chan {int /*<<< orphan*/  state; int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {struct sock* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sock *parent)
{
	struct sock *sk;

	FUNC0("parent %p state %s", parent,
	       FUNC8(parent->sk_state));

	/* Close not yet accepted channels */
	while ((sk = FUNC2(parent, NULL))) {
		struct l2cap_chan *chan = FUNC6(sk)->chan;

		FUNC0("child chan %p state %s", chan,
		       FUNC8(chan->state));

		FUNC4(chan);
		FUNC1(chan);
		FUNC3(chan, ECONNRESET);
		FUNC5(chan);

		FUNC7(sk);
	}
}