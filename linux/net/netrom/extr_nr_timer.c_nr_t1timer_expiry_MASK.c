#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct nr_sock {int state; int /*<<< orphan*/  n2count; int /*<<< orphan*/  n2; struct sock sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NR_CONNREQ ; 
 int /*<<< orphan*/  NR_DISCREQ ; 
#define  NR_STATE_1 130 
#define  NR_STATE_2 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct nr_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nr_sock* nr ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t1timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct nr_sock *nr = FUNC2(nr, t, t1timer);
	struct sock *sk = &nr->sock;

	FUNC0(sk);
	switch (nr->state) {
	case NR_STATE_1:
		if (nr->n2count == nr->n2) {
			FUNC3(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC6(sk, NR_CONNREQ);
		}
		break;

	case NR_STATE_2:
		if (nr->n2count == nr->n2) {
			FUNC3(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC6(sk, NR_DISCREQ);
		}
		break;

	case NR_STATE_3:
		if (nr->n2count == nr->n2) {
			FUNC3(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC4(sk);
		}
		break;
	}

	FUNC5(sk);
	FUNC1(sk);
}