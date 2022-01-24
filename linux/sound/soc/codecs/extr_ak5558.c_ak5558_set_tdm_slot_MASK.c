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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak5558_priv {int slots; int slot_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK5558_03_CONTROL2 ; 
 int /*<<< orphan*/  AK5558_MODE_BITS ; 
 int AK5558_MODE_NORMAL ; 
 int AK5558_MODE_TDM128 ; 
 int AK5558_MODE_TDM256 ; 
 int AK5558_MODE_TDM512 ; 
 struct ak5558_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, unsigned int tx_mask,
			       unsigned int rx_mask, int slots,
			       int slot_width)
{
	struct snd_soc_component *component = dai->component;
	struct ak5558_priv *ak5558 = FUNC0(component);
	int tdm_mode;

	ak5558->slots = slots;
	ak5558->slot_width = slot_width;

	switch (slots * slot_width) {
	case 128:
		tdm_mode = AK5558_MODE_TDM128;
		break;
	case 256:
		tdm_mode = AK5558_MODE_TDM256;
		break;
	case 512:
		tdm_mode = AK5558_MODE_TDM512;
		break;
	default:
		tdm_mode = AK5558_MODE_NORMAL;
		break;
	}

	FUNC1(component, AK5558_03_CONTROL2, AK5558_MODE_BITS,
			    tdm_mode);
	return 0;
}