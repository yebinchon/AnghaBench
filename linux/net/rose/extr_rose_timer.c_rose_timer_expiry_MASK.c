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
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct rose_sock {int state; int condition; TYPE_1__* neighbour; struct sock sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  ROSE_CLEAR_REQUEST ; 
 int ROSE_COND_ACK_PENDING ; 
#define  ROSE_STATE_1 131 
#define  ROSE_STATE_2 130 
#define  ROSE_STATE_3 129 
#define  ROSE_STATE_4 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct rose_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct rose_sock* rose ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct rose_sock *rose = FUNC2(rose, t, timer);
	struct sock *sk = &rose->sock;

	FUNC0(sk);
	switch (rose->state) {
	case ROSE_STATE_1:	/* T1 */
	case ROSE_STATE_4:	/* T2 */
		FUNC6(sk, ROSE_CLEAR_REQUEST);
		rose->state = ROSE_STATE_2;
		FUNC5(sk);
		break;

	case ROSE_STATE_2:	/* T3 */
		rose->neighbour->use--;
		FUNC3(sk, ETIMEDOUT, -1, -1);
		break;

	case ROSE_STATE_3:	/* HB */
		if (rose->condition & ROSE_COND_ACK_PENDING) {
			rose->condition &= ~ROSE_COND_ACK_PENDING;
			FUNC4(sk);
		}
		break;
	}
	FUNC1(sk);
}