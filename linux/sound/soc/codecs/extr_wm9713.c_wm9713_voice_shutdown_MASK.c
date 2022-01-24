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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_HANDSET_RATE ; 
 int EINVAL ; 
 int SND_SOC_DAPM_PRE_PMD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
				 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);

	if (FUNC0(event != SND_SOC_DAPM_PRE_PMD))
		return -EINVAL;

	/* Gracefully shut down the voice interface. */
	FUNC3(component, AC97_HANDSET_RATE, 0x0f00, 0x0200);
	FUNC2(FUNC1(1));
	FUNC3(component, AC97_HANDSET_RATE, 0x0f00, 0x0f00);
	FUNC3(component, AC97_EXTENDED_MID, 0x1000, 0x1000);

	return 0;
}