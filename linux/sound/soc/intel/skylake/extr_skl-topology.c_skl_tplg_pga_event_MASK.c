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
struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct skl_dev {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 struct skl_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_dapm_widget*,struct skl_dev*) ; 
 int FUNC2 (struct snd_soc_dapm_widget*,struct skl_dev*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *k, int event)

{
	struct snd_soc_dapm_context *dapm = w->dapm;
	struct skl_dev *skl = FUNC0(dapm->dev);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		return FUNC2(w, skl);

	case SND_SOC_DAPM_POST_PMD:
		return FUNC1(w, skl);
	}

	return 0;
}