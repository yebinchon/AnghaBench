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
struct target {int /*<<< orphan*/  uses_mmap; scalar_t__ per_thread; scalar_t__ default_per_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct target*) ; 
 scalar_t__ FUNC1 (struct target*) ; 
 scalar_t__ FUNC2 (struct target*) ; 

__attribute__((used)) static inline bool FUNC3(struct target *target)
{
	bool use_dummy = false;

	if (target->default_per_cpu)
		use_dummy = target->per_thread ? true : false;
	else if (FUNC2(target) ||
	         (!FUNC0(target) && !target->uses_mmap))
		use_dummy = true;
	else if (FUNC1(target))
		use_dummy = true;

	return use_dummy;
}