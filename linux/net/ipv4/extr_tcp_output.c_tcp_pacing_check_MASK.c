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
struct tcp_sock {scalar_t__ tcp_wstamp_ns; scalar_t__ tcp_clock_cache; int /*<<< orphan*/  pacing_timer; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_PINNED_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static bool FUNC6(struct sock *sk)
{
	struct tcp_sock *tp = FUNC5(sk);

	if (!FUNC4(sk))
		return false;

	if (tp->tcp_wstamp_ns <= tp->tcp_clock_cache)
		return false;

	if (!FUNC0(&tp->pacing_timer)) {
		FUNC1(&tp->pacing_timer,
			      FUNC2(tp->tcp_wstamp_ns),
			      HRTIMER_MODE_ABS_PINNED_SOFT);
		FUNC3(sk);
	}
	return true;
}