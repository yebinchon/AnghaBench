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
typedef  int /*<<< orphan*/  u32 ;
struct hdspm {int /*<<< orphan*/  control_register; int /*<<< orphan*/  settings_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_WR_SETTINGS ; 
 int /*<<< orphan*/  HDSPM_controlRegister ; 
 scalar_t__ FUNC0 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hdspm *hdspm, u32 regmask, int out)
{
	u32 *reg;
	u32 target_reg;

	if (FUNC0(hdspm)) {
		reg = &(hdspm->settings_register);
		target_reg = HDSPM_WR_SETTINGS;
	} else {
		reg = &(hdspm->control_register);
		target_reg = HDSPM_controlRegister;
	}

	if (out)
		*reg |= regmask;
	else
		*reg &= ~regmask;

	FUNC1(hdspm, target_reg, *reg);

	return 0;
}