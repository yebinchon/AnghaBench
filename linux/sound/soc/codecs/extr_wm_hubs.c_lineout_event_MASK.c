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
struct wm_hubs_data {int lineout1n_ena; int lineout1p_ena; int lineout2n_ena; int lineout2p_ena; } ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
#define  WM8993_LINEOUT1N_ENA_SHIFT 131 
#define  WM8993_LINEOUT1P_ENA_SHIFT 130 
#define  WM8993_LINEOUT2N_ENA_SHIFT 129 
#define  WM8993_LINEOUT2P_ENA_SHIFT 128 
 struct wm_hubs_data* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *control, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct wm_hubs_data *hubs = FUNC2(component);
	bool *flag;

	switch (w->shift) {
	case WM8993_LINEOUT1N_ENA_SHIFT:
		flag = &hubs->lineout1n_ena;
		break;
	case WM8993_LINEOUT1P_ENA_SHIFT:
		flag = &hubs->lineout1p_ena;
		break;
	case WM8993_LINEOUT2N_ENA_SHIFT:
		flag = &hubs->lineout2n_ena;
		break;
	case WM8993_LINEOUT2P_ENA_SHIFT:
		flag = &hubs->lineout2p_ena;
		break;
	default:
		FUNC1(1, "Unknown line output");
		return -EINVAL;
	}

	*flag = FUNC0(event);

	return 0;
}