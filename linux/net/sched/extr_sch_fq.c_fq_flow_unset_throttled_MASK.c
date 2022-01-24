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
struct fq_sched_data {int /*<<< orphan*/  old_flows; int /*<<< orphan*/  throttled_flows; int /*<<< orphan*/  delayed; } ;
struct fq_flow {int /*<<< orphan*/  rate_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fq_flow*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fq_sched_data *q, struct fq_flow *f)
{
	FUNC1(&f->rate_node, &q->delayed);
	q->throttled_flows--;
	FUNC0(&q->old_flows, f);
}