#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct skl_dsp_ops {int (* init_fw ) (int /*<<< orphan*/ ,struct skl_dev*) ;} ;
struct TYPE_5__ {TYPE_3__* astate_cfg; } ;
struct skl_dev {TYPE_2__ cfg; int /*<<< orphan*/  update_d0i3c; int /*<<< orphan*/  (* clock_power_gating ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* enable_miscbdcge ) (int /*<<< orphan*/ ,int) ;TYPE_1__* pci; int /*<<< orphan*/  debugfs; struct snd_soc_component* component; } ;
struct hdac_bus {scalar_t__ ppcap; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EIO ; 
 struct skl_dev* FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct hdac_bus* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct skl_dev*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct skl_dsp_ops* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skl_dev*) ; 
 int FUNC10 (struct snd_soc_component*,struct hdac_bus*) ; 
 int /*<<< orphan*/  skl_update_d0i3c ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct snd_soc_component *component)
{
	struct hdac_bus *bus = FUNC2(component->dev);
	struct skl_dev *skl = FUNC0(bus);
	const struct skl_dsp_ops *ops;
	int ret;

	FUNC3(component->dev);
	if (bus->ppcap) {
		skl->component = component;

		/* init debugfs */
		skl->debugfs = FUNC6(skl);

		ret = FUNC10(component, bus);
		if (ret < 0) {
			FUNC1(component->dev, "Failed to init topology!\n");
			return ret;
		}

		/* load the firmwares, since all is set */
		ops = FUNC8(skl->pci->device);
		if (!ops)
			return -EIO;

		/*
		 * Disable dynamic clock and power gating during firmware
		 * and library download
		 */
		skl->enable_miscbdcge(component->dev, false);
		skl->clock_power_gating(component->dev, false);

		ret = ops->init_fw(component->dev, skl);
		skl->enable_miscbdcge(component->dev, true);
		skl->clock_power_gating(component->dev, true);
		if (ret < 0) {
			FUNC1(component->dev, "Failed to boot first fw: %d\n", ret);
			return ret;
		}
		FUNC9(skl);
		skl->update_d0i3c = skl_update_d0i3c;

		if (skl->cfg.astate_cfg != NULL) {
			FUNC7(skl,
					skl->cfg.astate_cfg->count,
					skl->cfg.astate_cfg);
		}
	}
	FUNC4(component->dev);
	FUNC5(component->dev);

	return 0;
}