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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8728_DACCTL ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params,
	struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	u16 dac = FUNC1(component, WM8728_DACCTL);

	dac &= ~0x18;

	switch (FUNC0(params)) {
	case 16:
		break;
	case 20:
		dac |= 0x10;
		break;
	case 24:
		dac |= 0x08;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(component, WM8728_DACCTL, dac);

	return 0;
}