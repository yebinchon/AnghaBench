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
struct sock {int dummy; } ;
struct request_sock {int /*<<< orphan*/  num_retrans; } ;
struct rate_sample {int dummy; } ;
struct TYPE_2__ {scalar_t__ snt_synack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_SYN_ACKED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,long,long,long,struct rate_sample*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (struct request_sock*) ; 
 long FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct sock *sk, struct request_sock *req)
{
	struct rate_sample rs;
	long rtt_us = -1L;

	if (req && !req->num_retrans && FUNC2(req)->snt_synack)
		rtt_us = FUNC3(FUNC1(), FUNC2(req)->snt_synack);

	FUNC0(sk, FLAG_SYN_ACKED, rtt_us, -1L, rtt_us, &rs);
}