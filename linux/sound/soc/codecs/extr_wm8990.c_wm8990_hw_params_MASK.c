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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8990_AIF_WL_20BITS ; 
 int /*<<< orphan*/  WM8990_AIF_WL_24BITS ; 
 int /*<<< orphan*/  WM8990_AIF_WL_32BITS ; 
 int /*<<< orphan*/  WM8990_AIF_WL_MASK ; 
 int /*<<< orphan*/  WM8990_AUDIO_INTERFACE_1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	u16 audio1 = FUNC1(component, WM8990_AUDIO_INTERFACE_1);

	audio1 &= ~WM8990_AIF_WL_MASK;
	/* bit size */
	switch (FUNC0(params)) {
	case 16:
		break;
	case 20:
		audio1 |= WM8990_AIF_WL_20BITS;
		break;
	case 24:
		audio1 |= WM8990_AIF_WL_24BITS;
		break;
	case 32:
		audio1 |= WM8990_AIF_WL_32BITS;
		break;
	}

	FUNC2(component, WM8990_AUDIO_INTERFACE_1, audio1);
	return 0;
}