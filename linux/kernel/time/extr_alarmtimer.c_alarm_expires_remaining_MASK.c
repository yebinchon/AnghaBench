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
struct alarm_base {int /*<<< orphan*/  (* gettime ) () ;} ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct alarm {size_t type; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 struct alarm_base* alarm_bases ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

ktime_t FUNC2(const struct alarm *alarm)
{
	struct alarm_base *base = &alarm_bases[alarm->type];
	return FUNC0(alarm->node.expires, base->gettime());
}