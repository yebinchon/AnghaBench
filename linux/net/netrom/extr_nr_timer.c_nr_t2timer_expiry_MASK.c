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
struct nr_sock {int condition; struct sock sock; } ;

/* Variables and functions */
 int NR_COND_ACK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct nr_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nr_sock* nr ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  t2timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct nr_sock *nr = FUNC2(nr, t, t2timer);
	struct sock *sk = &nr->sock;

	FUNC0(sk);
	if (nr->condition & NR_COND_ACK_PENDING) {
		nr->condition &= ~NR_COND_ACK_PENDING;
		FUNC3(sk);
	}
	FUNC1(sk);
}