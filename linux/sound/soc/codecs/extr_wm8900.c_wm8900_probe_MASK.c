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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM8900_REG_ID ; 
 int /*<<< orphan*/  WM8900_REG_LADC_DV ; 
 int /*<<< orphan*/  WM8900_REG_LDAC_DV ; 
 int /*<<< orphan*/  WM8900_REG_LINVOL ; 
 int /*<<< orphan*/  WM8900_REG_LOUT1CTL ; 
 int /*<<< orphan*/  WM8900_REG_LOUT2CTL ; 
 int /*<<< orphan*/  WM8900_REG_OUTBIASCTL ; 
 int /*<<< orphan*/  WM8900_REG_RADC_DV ; 
 int /*<<< orphan*/  WM8900_REG_RDAC_DV ; 
 int /*<<< orphan*/  WM8900_REG_RINVOL ; 
 int /*<<< orphan*/  WM8900_REG_ROUT1CTL ; 
 int /*<<< orphan*/  WM8900_REG_ROUT2CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	int reg;

	reg = FUNC2(component, WM8900_REG_ID);
	if (reg != 0x8900) {
		FUNC0(component->dev, "Device is not a WM8900 - ID %x\n", reg);
		return -ENODEV;
	}

	FUNC5(component);

	/* Turn the chip on */
	FUNC1(component, SND_SOC_BIAS_STANDBY);

	/* Latch the volume update bits */
	FUNC3(component, WM8900_REG_LINVOL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_RINVOL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_LOUT1CTL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_ROUT1CTL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_LOUT2CTL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_ROUT2CTL, 0x100, 0x100);
	FUNC3(component, WM8900_REG_LDAC_DV, 0x100, 0x100);
	FUNC3(component, WM8900_REG_RDAC_DV, 0x100, 0x100);
	FUNC3(component, WM8900_REG_LADC_DV, 0x100, 0x100);
	FUNC3(component, WM8900_REG_RADC_DV, 0x100, 0x100);

	/* Set the DAC and mixer output bias */
	FUNC4(component, WM8900_REG_OUTBIASCTL, 0x81);

	return 0;
}