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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct cake_sched_data {int dummy; } ;

/* Variables and functions */
 int CAKE_MAX_TINS ; 
 int CAKE_QUEUES ; 
 scalar_t__ FUNC0 (struct cake_sched_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cake_sched_data*,int,int) ; 

__attribute__((used)) static void FUNC2(struct cake_sched_data *q, u16 i)
{
	while (i > 0 && i < CAKE_MAX_TINS * CAKE_QUEUES) {
		u16 p = (i - 1) >> 1;
		u32 ib = FUNC0(q, i);
		u32 pb = FUNC0(q, p);

		if (ib > pb) {
			FUNC1(q, i, p);
			i = p;
		} else {
			break;
		}
	}
}