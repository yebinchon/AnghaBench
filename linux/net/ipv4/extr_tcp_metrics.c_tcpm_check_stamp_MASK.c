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
struct tcp_metrics_block {scalar_t__ tcpm_stamp; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCP_METRICS_TIMEOUT ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_metrics_block*,struct dst_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tcp_metrics_block *tm, struct dst_entry *dst)
{
	if (tm && FUNC2(FUNC1(jiffies, tm->tcpm_stamp + TCP_METRICS_TIMEOUT)))
		FUNC0(tm, dst, false);
}