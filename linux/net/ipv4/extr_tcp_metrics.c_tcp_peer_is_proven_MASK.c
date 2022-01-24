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
struct tcp_metrics_block {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_METRIC_RTT ; 
 struct tcp_metrics_block* FUNC0 (struct request_sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct tcp_metrics_block*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct request_sock *req, struct dst_entry *dst)
{
	struct tcp_metrics_block *tm;
	bool ret;

	if (!dst)
		return false;

	FUNC1();
	tm = FUNC0(req, dst);
	if (tm && FUNC3(tm, TCP_METRIC_RTT))
		ret = true;
	else
		ret = false;
	FUNC2();

	return ret;
}