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
struct tcp_sock {int const chrono_type; } ;
struct sock {int dummy; } ;
typedef  enum tcp_chrono { ____Placeholder_tcp_chrono } tcp_chrono ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CHRONO_BUSY ; 
 int /*<<< orphan*/  TCP_CHRONO_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk, const enum tcp_chrono type)
{
	struct tcp_sock *tp = FUNC2(sk);


	/* There are multiple conditions worthy of tracking in a
	 * chronograph, so that the highest priority enum takes
	 * precedence over the other conditions (see tcp_chrono_start).
	 * If a condition stops, we only stop chrono tracking if
	 * it's the "most interesting" or current chrono we are
	 * tracking and starts busy chrono if we have pending data.
	 */
	if (FUNC1(sk))
		FUNC0(tp, TCP_CHRONO_UNSPEC);
	else if (type == tp->chrono_type)
		FUNC0(tp, TCP_CHRONO_BUSY);
}