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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct cs35l33_private {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int CS35L33_RX_AUD ; 
 int CS35L33_TX_EN4 ; 
 unsigned int CS35L33_TX_IMON ; 
 unsigned int CS35L33_TX_VBSTMON ; 
 unsigned int CS35L33_TX_VMON ; 
 unsigned int CS35L33_TX_VPMON ; 
 int CS35L33_X_LOC ; 
 int CS35L33_X_STATE ; 
 int EINVAL ; 
 int /*<<< orphan*/ * cs35l33_vp_vbst_mon_route ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 struct cs35l33_private* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dai *dai, unsigned int tx_mask,
				unsigned int rx_mask, int slots, int slot_width)
{
	struct snd_soc_component *component = dai->component;
	struct snd_soc_dapm_context *dapm = FUNC4(component);
	struct cs35l33_private *priv = FUNC5(component);
	unsigned int reg, bit_pos, i;
	int slot, slot_num;

	if (slot_width != 8)
		return -EINVAL;

	/* scan rx_mask for aud slot */
	slot = FUNC2(rx_mask) - 1;
	if (slot >= 0) {
		FUNC3(priv->regmap, CS35L33_RX_AUD,
			CS35L33_X_LOC, slot);
		FUNC1(component->dev, "Audio starts from slots %d", slot);
	}

	/*
	 * scan tx_mask: vmon(2 slots); imon (2 slots);
	 * vpmon (1 slot) vbstmon (1 slot)
	 */
	slot = FUNC2(tx_mask) - 1;
	slot_num = 0;

	for (i = 0; i < 2 ; i++) {
		/* disable vpmon/vbstmon: enable later if set in tx_mask */
		FUNC3(priv->regmap, CS35L33_TX_VPMON + i,
			CS35L33_X_STATE | CS35L33_X_LOC, CS35L33_X_STATE
			| CS35L33_X_LOC);
	}

	/* disconnect {vp,vbst}_mon routes: eanble later if set in tx_mask*/
	FUNC7(dapm, cs35l33_vp_vbst_mon_route,
		FUNC0(cs35l33_vp_vbst_mon_route));

	while (slot >= 0) {
		/* configure VMON_TX_LOC */
		if (slot_num == 0) {
			FUNC3(priv->regmap, CS35L33_TX_VMON,
				CS35L33_X_STATE | CS35L33_X_LOC, slot);
			FUNC1(component->dev, "VMON enabled in slots %d-%d",
				slot, slot + 1);
		}

		/* configure IMON_TX_LOC */
		if (slot_num == 3) {
			FUNC3(priv->regmap, CS35L33_TX_IMON,
				CS35L33_X_STATE | CS35L33_X_LOC, slot);
			FUNC1(component->dev, "IMON enabled in slots %d-%d",
				slot, slot + 1);
		}

		/* configure VPMON_TX_LOC */
		if (slot_num == 4) {
			FUNC3(priv->regmap, CS35L33_TX_VPMON,
				CS35L33_X_STATE | CS35L33_X_LOC, slot);
			FUNC6(dapm,
				&cs35l33_vp_vbst_mon_route[0], 2);
			FUNC1(component->dev, "VPMON enabled in slots %d", slot);
		}

		/* configure VBSTMON_TX_LOC */
		if (slot_num == 5) {
			FUNC3(priv->regmap, CS35L33_TX_VBSTMON,
				CS35L33_X_STATE | CS35L33_X_LOC, slot);
			FUNC6(dapm,
				&cs35l33_vp_vbst_mon_route[2], 2);
			FUNC1(component->dev,
				"VBSTMON enabled in slots %d", slot);
		}

		/* Enable the relevant tx slot */
		reg = CS35L33_TX_EN4 - (slot/8);
		bit_pos = slot - ((slot / 8) * (8));
		FUNC3(priv->regmap, reg,
			1 << bit_pos, 1 << bit_pos);

		tx_mask &= ~(1 << slot);
		slot = FUNC2(tx_mask) - 1;
		slot_num++;
	}

	return 0;
}