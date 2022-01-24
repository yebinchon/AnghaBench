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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  block_index; } ;
struct ingress_sched_data {TYPE_1__ block_info; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct ingress_sched_data* FUNC0 (struct Qdisc*) ; 

__attribute__((used)) static u32 FUNC1(struct Qdisc *sch)
{
	struct ingress_sched_data *q = FUNC0(sch);

	return q->block_info.block_index;
}