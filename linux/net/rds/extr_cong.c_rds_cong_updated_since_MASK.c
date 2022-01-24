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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  rds_cong_generation ; 

int FUNC2(unsigned long *recent)
{
	unsigned long gen = FUNC0(&rds_cong_generation);

	if (FUNC1(*recent == gen))
		return 0;
	*recent = gen;
	return 1;
}