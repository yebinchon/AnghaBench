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
 int FUNC0 (int*) ; 
 int WM8983_BIASCUT ; 
 int WM8983_BIAS_CTRL ; 
 int WM8983_DAC_CONTROL ; 
 int WM8983_LOUT1_HP_VOLUME_CTRL ; 
 int WM8983_OUT4_MONO_MIX_CTRL ; 
 int WM8983_SOFTMUTE ; 
 int WM8983_SOFTMUTE_MASK ; 
 int /*<<< orphan*/  WM8983_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int,int,int) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* vol_update_regs ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	int ret;
	int i;

	ret = FUNC3(component, WM8983_SOFTWARE_RESET, 0);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	/* set the vol/gain update bits */
	for (i = 0; i < FUNC0(vol_update_regs); ++i)
		FUNC2(component, vol_update_regs[i],
				    0x100, 0x100);

	/* mute all outputs and set PGAs to minimum gain */
	for (i = WM8983_LOUT1_HP_VOLUME_CTRL;
	     i <= WM8983_OUT4_MONO_MIX_CTRL; ++i)
		FUNC2(component, i, 0x40, 0x40);

	/* enable soft mute */
	FUNC2(component, WM8983_DAC_CONTROL,
			    WM8983_SOFTMUTE_MASK,
			    WM8983_SOFTMUTE);

	/* enable BIASCUT */
	FUNC2(component, WM8983_BIAS_CTRL,
			    WM8983_BIASCUT, WM8983_BIASCUT);
	return 0;
}