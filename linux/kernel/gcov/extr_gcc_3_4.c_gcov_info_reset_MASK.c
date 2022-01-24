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
struct gcov_info {TYPE_1__* counts; } ;
typedef  int /*<<< orphan*/  gcov_type ;
struct TYPE_2__ {int num; int /*<<< orphan*/  values; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (struct gcov_info*) ; 

void FUNC2(struct gcov_info *info)
{
	unsigned int active = FUNC1(info);
	unsigned int i;

	for (i = 0; i < active; i++) {
		FUNC0(info->counts[i].values, 0,
		       info->counts[i].num * sizeof(gcov_type));
	}
}