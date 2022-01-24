#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm8988_priv {int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int sr; int usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8988_IFACE ; 
 int /*<<< orphan*/  WM8988_SRATE ; 
 TYPE_1__* coeff_div ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 struct wm8988_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8988_priv *wm8988 = FUNC4(component);
	u16 iface = FUNC5(component, WM8988_IFACE) & 0x1f3;
	u16 srate = FUNC5(component, WM8988_SRATE) & 0x180;
	int coeff;

	coeff = FUNC1(wm8988->sysclk, FUNC2(params));
	if (coeff < 0) {
		coeff = FUNC1(wm8988->sysclk / 2, FUNC2(params));
		srate |= 0x40;
	}
	if (coeff < 0) {
		FUNC0(component->dev,
			"Unable to configure sample rate %dHz with %dHz MCLK\n",
			FUNC2(params), wm8988->sysclk);
		return coeff;
	}

	/* bit size */
	switch (FUNC3(params)) {
	case 16:
		break;
	case 20:
		iface |= 0x0004;
		break;
	case 24:
		iface |= 0x0008;
		break;
	case 32:
		iface |= 0x000c;
		break;
	}

	/* set iface & srate */
	FUNC6(component, WM8988_IFACE, iface);
	if (coeff >= 0)
		FUNC6(component, WM8988_SRATE, srate |
			(coeff_div[coeff].sr << 1) | coeff_div[coeff].usb);

	return 0;
}