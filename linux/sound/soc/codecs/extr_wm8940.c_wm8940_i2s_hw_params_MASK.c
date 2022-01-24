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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  WM8940_ADDCNTRL ; 
 int /*<<< orphan*/  WM8940_COMPANDINGCTL ; 
 int /*<<< orphan*/  WM8940_IFACE ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	u16 iface = FUNC3(component, WM8940_IFACE) & 0xFD9F;
	u16 addcntrl = FUNC3(component, WM8940_ADDCNTRL) & 0xFFF1;
	u16 companding =  FUNC3(component,
						WM8940_COMPANDINGCTL) & 0xFFDF;
	int ret;

	/* LoutR control */
	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE
	    && FUNC0(params) == 2)
		iface |= (1 << 9);

	switch (FUNC1(params)) {
	case 8000:
		addcntrl |= (0x5 << 1);
		break;
	case 11025:
		addcntrl |= (0x4 << 1);
		break;
	case 16000:
		addcntrl |= (0x3 << 1);
		break;
	case 22050:
		addcntrl |= (0x2 << 1);
		break;
	case 32000:
		addcntrl |= (0x1 << 1);
		break;
	case 44100:
	case 48000:
		break;
	}
	ret = FUNC4(component, WM8940_ADDCNTRL, addcntrl);
	if (ret)
		goto error_ret;

	switch (FUNC2(params)) {
	case 8:
		companding = companding | (1 << 5);
		break;
	case 16:
		break;
	case 20:
		iface |= (1 << 5);
		break;
	case 24:
		iface |= (2 << 5);
		break;
	case 32:
		iface |= (3 << 5);
		break;
	}
	ret = FUNC4(component, WM8940_COMPANDINGCTL, companding);
	if (ret)
		goto error_ret;
	ret = FUNC4(component, WM8940_IFACE, iface);

error_ret:
	return ret;
}