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
typedef  int /*<<< orphan*/  u64 ;
struct tcp_sock {int /*<<< orphan*/  tcp_mstamp; int /*<<< orphan*/  tcp_clock_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct tcp_sock *tp)
{
	u64 val = FUNC1();

	tp->tcp_clock_cache = val;
	tp->tcp_mstamp = FUNC0(val, NSEC_PER_USEC);
}