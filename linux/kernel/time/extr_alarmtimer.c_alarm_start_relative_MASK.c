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
struct alarm_base {int /*<<< orphan*/  (* gettime ) () ;} ;
struct alarm {size_t type; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct alarm_base* alarm_bases ; 
 int /*<<< orphan*/  FUNC0 (struct alarm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct alarm *alarm, ktime_t start)
{
	struct alarm_base *base = &alarm_bases[alarm->type];

	start = FUNC1(start, base->gettime());
	FUNC0(alarm, start);
}