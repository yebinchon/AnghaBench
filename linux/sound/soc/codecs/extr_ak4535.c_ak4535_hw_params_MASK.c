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
typedef  int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak4535_priv {int sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4535_MODE2 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 struct ak4535_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ak4535_priv *ak4535 = FUNC1(component);
	u8 mode2 = FUNC2(component, AK4535_MODE2) & ~(0x3 << 5);
	int rate = FUNC0(params), fs = 256;

	if (rate)
		fs = ak4535->sysclk / rate;

	/* set fs */
	switch (fs) {
	case 1024:
		mode2 |= (0x2 << 5);
		break;
	case 512:
		mode2 |= (0x1 << 5);
		break;
	case 256:
		break;
	}

	/* set rate */
	FUNC3(component, AK4535_MODE2, mode2);
	return 0;
}