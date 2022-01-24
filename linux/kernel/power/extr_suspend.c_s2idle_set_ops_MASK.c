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
struct platform_s2idle_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct platform_s2idle_ops const* s2idle_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(const struct platform_s2idle_ops *ops)
{
	FUNC0();
	s2idle_ops = ops;
	FUNC1();
}