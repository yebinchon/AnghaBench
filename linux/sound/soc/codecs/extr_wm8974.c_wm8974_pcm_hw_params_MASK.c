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
typedef  int u16 ;
struct wm8974_priv {int fs; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8974_ADD ; 
 int /*<<< orphan*/  WM8974_IFACE ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct wm8974_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8974_priv *priv = FUNC2(component);
	u16 iface = FUNC3(component, WM8974_IFACE) & 0x19f;
	u16 adn = FUNC3(component, WM8974_ADD) & 0x1f1;
	int err;

	priv->fs = FUNC0(params);
	err = FUNC5(dai);
	if (err)
		return err;

	/* bit size */
	switch (FUNC1(params)) {
	case 16:
		break;
	case 20:
		iface |= 0x0020;
		break;
	case 24:
		iface |= 0x0040;
		break;
	case 32:
		iface |= 0x0060;
		break;
	}

	/* filter coefficient */
	switch (FUNC0(params)) {
	case 8000:
		adn |= 0x5 << 1;
		break;
	case 11025:
		adn |= 0x4 << 1;
		break;
	case 16000:
		adn |= 0x3 << 1;
		break;
	case 22050:
		adn |= 0x2 << 1;
		break;
	case 32000:
		adn |= 0x1 << 1;
		break;
	case 44100:
	case 48000:
		break;
	}

	FUNC4(component, WM8974_IFACE, iface);
	FUNC4(component, WM8974_ADD, adn);
	return 0;
}