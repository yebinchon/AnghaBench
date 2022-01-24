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
struct wm8994_priv {struct wm8994_micdet* micdet; struct wm8994* wm8994; } ;
struct wm8994_micdet {int detecting; struct snd_soc_jack* jack; } ;
struct wm8994 {scalar_t__ type; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ WM8994 ; 
 int /*<<< orphan*/  WM8994_IRQ_DEBOUNCE ; 
 int WM8994_MIC1_DET_DB ; 
 int WM8994_MIC1_DET_DB_MASK ; 
 int WM8994_MIC1_SHRT_DB ; 
 int WM8994_MIC1_SHRT_DB_MASK ; 
 int WM8994_MIC2_DET_DB_MASK ; 
 int WM8994_MIC2_SHRT_DB_MASK ; 
 int /*<<< orphan*/  WM8994_MICBIAS ; 
 int WM8994_MICD_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,struct snd_soc_jack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct wm8994_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct snd_soc_dapm_context*,char*) ; 
 int FUNC6 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*) ; 

int FUNC8(struct snd_soc_component *component, struct snd_soc_jack *jack,
		      int micbias)
{
	struct snd_soc_dapm_context *dapm = FUNC2(component);
	struct wm8994_priv *wm8994 = FUNC3(component);
	struct wm8994_micdet *micdet;
	struct wm8994 *control = wm8994->wm8994;
	int reg, ret;

	if (control->type != WM8994) {
		FUNC1(component->dev, "Not a WM8994\n");
		return -EINVAL;
	}

	switch (micbias) {
	case 1:
		micdet = &wm8994->micdet[0];
		if (jack)
			ret = FUNC6(dapm, "MICBIAS1");
		else
			ret = FUNC5(dapm, "MICBIAS1");
		break;
	case 2:
		micdet = &wm8994->micdet[1];
		if (jack)
			ret = FUNC6(dapm, "MICBIAS1");
		else
			ret = FUNC5(dapm, "MICBIAS1");
		break;
	default:
		FUNC1(component->dev, "Invalid MICBIAS %d\n", micbias);
		return -EINVAL;
	}

	if (ret != 0)
		FUNC1(component->dev, "Failed to configure MICBIAS%d: %d\n",
			 micbias, ret);

	FUNC0(component->dev, "Configuring microphone detection on %d %p\n",
		micbias, jack);

	/* Store the configuration */
	micdet->jack = jack;
	micdet->detecting = true;

	/* If either of the jacks is set up then enable detection */
	if (wm8994->micdet[0].jack || wm8994->micdet[1].jack)
		reg = WM8994_MICD_ENA;
	else
		reg = 0;

	FUNC4(component, WM8994_MICBIAS, WM8994_MICD_ENA, reg);

	/* enable MICDET and MICSHRT deboune */
	FUNC4(component, WM8994_IRQ_DEBOUNCE,
			    WM8994_MIC1_DET_DB_MASK | WM8994_MIC1_SHRT_DB_MASK |
			    WM8994_MIC2_DET_DB_MASK | WM8994_MIC2_SHRT_DB_MASK,
			    WM8994_MIC1_DET_DB | WM8994_MIC1_SHRT_DB);

	FUNC7(dapm);

	return 0;
}