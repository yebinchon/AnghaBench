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
struct nau8540 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NAU8540_I2S_DO12_OE ; 
 unsigned int NAU8540_I2S_DO34_OE ; 
 unsigned int NAU8540_I2S_TSLOT_L_MASK ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL1 ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL2 ; 
 int /*<<< orphan*/  NAU8540_REG_PCM_CTRL4 ; 
 unsigned int NAU8540_TDM_MODE ; 
 unsigned int NAU8540_TDM_OFFSET_EN ; 
 unsigned int NAU8540_TDM_TX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct nau8540* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai,
	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
	struct snd_soc_component *component = dai->component;
	struct nau8540 *nau8540 = FUNC1(component);
	unsigned int ctrl2_val = 0, ctrl4_val = 0;

	if (slots > 4 || ((tx_mask & 0xf0) && (tx_mask & 0xf)))
		return -EINVAL;

	ctrl4_val |= (NAU8540_TDM_MODE | NAU8540_TDM_OFFSET_EN);
	if (tx_mask & 0xf0) {
		ctrl2_val = 4 * slot_width;
		ctrl4_val |= (tx_mask >> 4);
	} else {
		ctrl4_val |= tx_mask;
	}
	FUNC0(nau8540->regmap, NAU8540_REG_PCM_CTRL4,
		NAU8540_TDM_MODE | NAU8540_TDM_OFFSET_EN |
		NAU8540_TDM_TX_MASK, ctrl4_val);
	FUNC0(nau8540->regmap, NAU8540_REG_PCM_CTRL1,
		NAU8540_I2S_DO12_OE, NAU8540_I2S_DO12_OE);
	FUNC0(nau8540->regmap, NAU8540_REG_PCM_CTRL2,
		NAU8540_I2S_DO34_OE | NAU8540_I2S_TSLOT_L_MASK,
		NAU8540_I2S_DO34_OE | ctrl2_val);

	return 0;
}