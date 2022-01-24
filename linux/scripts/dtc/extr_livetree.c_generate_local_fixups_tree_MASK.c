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
struct dt_info {int /*<<< orphan*/  dt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dt_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct dt_info *dti, char *name)
{
	if (!FUNC0(dti, dti->dt))
		return;
	FUNC2(dti, FUNC1(dti->dt, name),
					    dti->dt);
}