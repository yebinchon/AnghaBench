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
struct tk_read_base {int /*<<< orphan*/  clock; } ;
struct clocksource {int /*<<< orphan*/  (* read ) (struct clocksource*) ;} ;

/* Variables and functions */
 struct clocksource* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clocksource*) ; 

__attribute__((used)) static inline u64 FUNC2(const struct tk_read_base *tkr)
{
	struct clocksource *clock = FUNC0(tkr->clock);

	return clock->read(clock);
}