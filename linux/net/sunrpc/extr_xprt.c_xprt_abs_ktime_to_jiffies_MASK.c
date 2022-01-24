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
typedef  int /*<<< orphan*/  s64 ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 unsigned long jiffies ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(ktime_t abstime)
{
	s64 delta = FUNC1(FUNC0() - abstime);
	return FUNC2(delta >= 0) ?
		jiffies - FUNC3(delta) :
		jiffies + FUNC3(-delta);
}