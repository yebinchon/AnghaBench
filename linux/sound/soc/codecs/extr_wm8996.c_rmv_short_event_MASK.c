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
struct wm8996_priv {int /*<<< orphan*/  hpout_pending; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct wm8996_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			   struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct wm8996_priv *wm8996 = FUNC1(component);

	/* Record which outputs we enabled */
	switch (event) {
	case SND_SOC_DAPM_PRE_PMD:
		wm8996->hpout_pending &= ~w->shift;
		break;
	case SND_SOC_DAPM_PRE_PMU:
		wm8996->hpout_pending |= w->shift;
		break;
	default:
		FUNC0(1, "Invalid event %d\n", event);
		return -EINVAL;
	}

	return 0;
}