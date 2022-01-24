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
struct wm_hubs_data {int /*<<< orphan*/  micb2_delay; int /*<<< orphan*/  micb1_delay; } ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8993_MICB1_ENA_SHIFT 129 
#define  WM8993_MICB2_ENA_SHIFT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wm_hubs_data* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct wm_hubs_data *hubs = FUNC1(component);

	switch (w->shift) {
	case WM8993_MICB1_ENA_SHIFT:
		if (hubs->micb1_delay)
			FUNC0(hubs->micb1_delay);
		break;
	case WM8993_MICB2_ENA_SHIFT:
		if (hubs->micb2_delay)
			FUNC0(hubs->micb2_delay);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}