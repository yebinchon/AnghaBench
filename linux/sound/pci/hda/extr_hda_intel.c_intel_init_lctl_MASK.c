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
typedef  int u32 ;
struct hdac_bus {scalar_t__ mlcap; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int AZX_MLCTL_CPA ; 
 int AZX_MLCTL_CPA_SHIFT ; 
 int AZX_MLCTL_SPA ; 
 int AZX_MLCTL_SPA_SHIFT ; 
 scalar_t__ AZX_ML_BASE ; 
 scalar_t__ AZX_REG_ML_LCTL ; 
 int ML_LCTL_SCF_MASK ; 
 struct hdac_bus* FUNC0 (struct azx*) ; 
 int FUNC1 (struct azx*) ; 
 int FUNC2 (struct azx*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct azx *chip)
{
	struct hdac_bus *bus = FUNC0(chip);
	u32 val;
	int ret;

	/* 0. check lctl register value is correct or not */
	val = FUNC3(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);
	/* if SCF is already set, let's use it */
	if ((val & ML_LCTL_SCF_MASK) != 0)
		return;

	/*
	 * Before operating on SPA, CPA must match SPA.
	 * Any deviation may result in undefined behavior.
	 */
	if (((val & AZX_MLCTL_SPA) >> AZX_MLCTL_SPA_SHIFT) !=
		((val & AZX_MLCTL_CPA) >> AZX_MLCTL_CPA_SHIFT))
		return;

	/* 1. turn link down: set SPA to 0 and wait CPA to 0 */
	ret = FUNC2(chip, 0);
	FUNC4(100);
	if (ret)
		goto set_spa;

	/* 2. update SCF to select a properly audio clock*/
	val &= ~ML_LCTL_SCF_MASK;
	val |= FUNC1(chip);
	FUNC5(val, bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);

set_spa:
	/* 4. turn link up: set SPA to 1 and wait CPA to 1 */
	FUNC2(chip, 1);
	FUNC4(100);
}