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
struct timespec64 {int dummy; } ;
struct timekeeper {int /*<<< orphan*/  offs_boot; int /*<<< orphan*/  offs_real; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {struct timekeeper timekeeper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tk_core ; 

void FUNC2(struct timespec64 *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	ktime_t t = FUNC0(tk->offs_real, tk->offs_boot);

	*ts = FUNC1(t);
}