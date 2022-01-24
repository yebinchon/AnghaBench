#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* astate_cfg; } ;
struct skl_dev {TYPE_1__ cfg; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* clock_power_gating ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* enable_miscbdcge ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dsp; scalar_t__ is_first_boot; } ;
struct hdac_bus {int /*<<< orphan*/  ppcap; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skl_dev*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC2 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

int FUNC9(struct skl_dev *skl)
{
	struct hdac_bus *bus = FUNC2(skl);
	int ret;

	/* if ppcap is not supported return 0 */
	if (!bus->ppcap)
		return 0;

	/* enable ppcap interrupt */
	FUNC3(bus, true);
	FUNC4(bus, true);

	/* check if DSP 1st boot is done */
	if (skl->is_first_boot)
		return 0;

	/*
	 * Disable dynamic clock and power gating during firmware
	 * and library download
	 */
	skl->enable_miscbdcge(skl->dev, false);
	skl->clock_power_gating(skl->dev, false);

	ret = FUNC1(skl->dsp);
	skl->enable_miscbdcge(skl->dev, true);
	skl->clock_power_gating(skl->dev, true);
	if (ret < 0)
		return ret;

	if (skl->cfg.astate_cfg != NULL) {
		FUNC0(skl, skl->cfg.astate_cfg->count,
					skl->cfg.astate_cfg);
	}
	return ret;
}