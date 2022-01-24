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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak5558_priv {int /*<<< orphan*/  slot_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK5558_02_CONTROL1 ; 
 int /*<<< orphan*/  AK5558_BITS ; 
 int /*<<< orphan*/  AK5558_DIF_24BIT_MODE ; 
 int /*<<< orphan*/  AK5558_DIF_32BIT_MODE ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 struct ak5558_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ak5558_priv *ak5558 = FUNC2(component);
	u8 bits;
	int pcm_width = FUNC0(FUNC1(params), ak5558->slot_width);

	switch (pcm_width) {
	case 16:
		bits = AK5558_DIF_24BIT_MODE;
		break;
	case 32:
		bits = AK5558_DIF_32BIT_MODE;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(component, AK5558_02_CONTROL1, AK5558_BITS, bits);

	return 0;
}