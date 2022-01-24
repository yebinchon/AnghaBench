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
struct wm8753_priv {int pcmclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8753_PCM ; 
 int /*<<< orphan*/  WM8753_SRATE1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct wm8753_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm8753_priv *wm8753 = FUNC2(component);
	u16 voice = FUNC3(component, WM8753_PCM) & 0x01f3;
	u16 srate = FUNC3(component, WM8753_SRATE1) & 0x017f;

	/* bit size */
	switch (FUNC1(params)) {
	case 16:
		break;
	case 20:
		voice |= 0x0004;
		break;
	case 24:
		voice |= 0x0008;
		break;
	case 32:
		voice |= 0x000c;
		break;
	}

	/* sample rate */
	if (FUNC0(params) * 384 == wm8753->pcmclk)
		srate |= 0x80;
	FUNC4(component, WM8753_SRATE1, srate);

	FUNC4(component, WM8753_PCM, voice);
	return 0;
}