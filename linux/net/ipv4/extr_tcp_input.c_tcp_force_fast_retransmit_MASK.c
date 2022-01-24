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
struct tcp_sock {int reordering; int mss_cache; scalar_t__ snd_una; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static bool FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);

	return FUNC0(FUNC1(tp),
		     tp->snd_una + tp->reordering * tp->mss_cache);
}