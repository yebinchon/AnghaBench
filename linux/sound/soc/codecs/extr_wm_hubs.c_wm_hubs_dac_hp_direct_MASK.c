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
 int WM8993_DACL_TO_HPOUT1L ; 
 int WM8993_DACL_TO_MIXOUTL ; 
 int WM8993_DACR_TO_HPOUT1R ; 
 int WM8993_DACR_TO_MIXOUTR ; 
 int /*<<< orphan*/  WM8993_OUTPUT_MIXER1 ; 
 int /*<<< orphan*/  WM8993_OUTPUT_MIXER2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct snd_soc_component *component)
{
	int reg;

	/* If we're going via the mixer we'll need to do additional checks */
	reg = FUNC1(component, WM8993_OUTPUT_MIXER1);
	if (!(reg & WM8993_DACL_TO_HPOUT1L)) {
		if (reg & ~WM8993_DACL_TO_MIXOUTL) {
			FUNC0(component->dev, "Analogue paths connected: %x\n",
				 reg & ~WM8993_DACL_TO_HPOUT1L);
			return false;
		} else {
			FUNC0(component->dev, "HPL connected to mixer\n");
		}
	} else {
		FUNC0(component->dev, "HPL connected to DAC\n");
	}

	reg = FUNC1(component, WM8993_OUTPUT_MIXER2);
	if (!(reg & WM8993_DACR_TO_HPOUT1R)) {
		if (reg & ~WM8993_DACR_TO_MIXOUTR) {
			FUNC0(component->dev, "Analogue paths connected: %x\n",
				 reg & ~WM8993_DACR_TO_HPOUT1R);
			return false;
		} else {
			FUNC0(component->dev, "HPR connected to mixer\n");
		}
	} else {
		FUNC0(component->dev, "HPR connected to DAC\n");
	}

	return true;
}