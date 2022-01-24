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
#define  WM8994_AIF1DAC1L_TO_DAC1L 130 
#define  WM8994_AIF1DAC2L_TO_DAC1L 129 
#define  WM8994_AIF2DACL_TO_DAC1L 128 
 int /*<<< orphan*/  WM8994_CLASS_W_1 ; 
 int /*<<< orphan*/  WM8994_CP_DYN_SRC_SEL_MASK ; 
 int WM8994_CP_DYN_SRC_SEL_SHIFT ; 
 int /*<<< orphan*/  WM8994_DAC1_LEFT_MIXER_ROUTING ; 
 int /*<<< orphan*/  WM8994_DAC1_RIGHT_MIXER_ROUTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(struct snd_soc_component *component)
{
	int source = 0;  /* GCC flow analysis can't track enable */
	int reg, reg_r;

	/* We also need the same AIF source for L/R and only one path */
	reg = FUNC1(component, WM8994_DAC1_LEFT_MIXER_ROUTING);
	switch (reg) {
	case WM8994_AIF2DACL_TO_DAC1L:
		FUNC0(component->dev, "Class W source AIF2DAC\n");
		source = 2 << WM8994_CP_DYN_SRC_SEL_SHIFT;
		break;
	case WM8994_AIF1DAC2L_TO_DAC1L:
		FUNC0(component->dev, "Class W source AIF1DAC2\n");
		source = 1 << WM8994_CP_DYN_SRC_SEL_SHIFT;
		break;
	case WM8994_AIF1DAC1L_TO_DAC1L:
		FUNC0(component->dev, "Class W source AIF1DAC1\n");
		source = 0 << WM8994_CP_DYN_SRC_SEL_SHIFT;
		break;
	default:
		FUNC0(component->dev, "DAC mixer setting: %x\n", reg);
		return false;
	}

	reg_r = FUNC1(component, WM8994_DAC1_RIGHT_MIXER_ROUTING);
	if (reg_r != reg) {
		FUNC0(component->dev, "Left and right DAC mixers different\n");
		return false;
	}

	/* Set the source up */
	FUNC2(component, WM8994_CLASS_W_1,
			    WM8994_CP_DYN_SRC_SEL_MASK, source);

	return true;
}