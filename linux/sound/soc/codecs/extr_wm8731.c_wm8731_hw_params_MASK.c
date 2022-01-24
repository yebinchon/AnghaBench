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
struct wm8731_priv {int /*<<< orphan*/  playback_fs; int /*<<< orphan*/  sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int sr; int bosr; int usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8731_IFACE ; 
 int /*<<< orphan*/  WM8731_SRATE ; 
 TYPE_1__* coeff_div ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct wm8731_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8731_priv *wm8731 = FUNC3(component);
	u16 iface = FUNC4(component, WM8731_IFACE) & 0xfff3;
	int i = FUNC0(wm8731->sysclk, FUNC1(params));
	u16 srate = (coeff_div[i].sr << 2) |
		(coeff_div[i].bosr << 1) | coeff_div[i].usb;

	wm8731->playback_fs = FUNC1(params);

	FUNC5(component, WM8731_SRATE, srate);

	/* bit size */
	switch (FUNC2(params)) {
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

	FUNC6(component);

	FUNC5(component, WM8731_IFACE, iface);
	return 0;
}