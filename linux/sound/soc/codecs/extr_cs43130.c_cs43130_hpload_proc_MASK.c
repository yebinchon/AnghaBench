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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct reg_sequence {int dummy; } ;
struct cs43130_private {int hpload_stat; int /*<<< orphan*/  regmap; int /*<<< orphan*/  hpload_evt; int /*<<< orphan*/ * ac_freq; struct snd_soc_component* component; } ;

/* Variables and functions */
 unsigned int CS43130_HPLOAD_AC_INT ; 
 int /*<<< orphan*/  CS43130_HPLOAD_AC_START ; 
 int CS43130_HPLOAD_NO_DC_INT ; 
 int CS43130_HPLOAD_OOR_INT ; 
 int CS43130_HPLOAD_UNPLUG_INT ; 
 int /*<<< orphan*/  CS43130_HP_LOAD_1 ; 
 int /*<<< orphan*/  CS43130_HP_MEAS_LOAD_1 ; 
 int CS43130_HP_MEAS_LOAD_1_SHIFT ; 
 int /*<<< orphan*/  CS43130_HP_MEAS_LOAD_2 ; 
 int CS43130_HP_MEAS_LOAD_2_SHIFT ; 
 int /*<<< orphan*/  CS43130_HP_MEAS_LOAD_MASK ; 
 int /*<<< orphan*/  CS43130_INT_MASK_4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct reg_sequence*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cs43130_private *cs43130,
			       struct reg_sequence *seq, int seq_size,
			       unsigned int rslt_msk, int ac_idx)
{
	int ret;
	unsigned int msk;
	u16 ac_reg_val;
	struct snd_soc_component *component = cs43130->component;

	FUNC7(&cs43130->hpload_evt);

	if (rslt_msk == CS43130_HPLOAD_AC_INT) {
		ac_reg_val = FUNC0(cs43130->ac_freq[ac_idx]);
		FUNC6(cs43130->regmap, CS43130_HP_LOAD_1,
				   CS43130_HPLOAD_AC_START, 0);
		FUNC6(cs43130->regmap, CS43130_HP_MEAS_LOAD_1,
				   CS43130_HP_MEAS_LOAD_MASK,
				   ac_reg_val >> CS43130_HP_MEAS_LOAD_1_SHIFT);
		FUNC6(cs43130->regmap, CS43130_HP_MEAS_LOAD_2,
				   CS43130_HP_MEAS_LOAD_MASK,
				   ac_reg_val >> CS43130_HP_MEAS_LOAD_2_SHIFT);
	}

	FUNC4(cs43130->regmap, seq,
			       seq_size);

	ret = FUNC8(&cs43130->hpload_evt,
					  FUNC3(1000));
	FUNC5(cs43130->regmap, CS43130_INT_MASK_4, &msk);
	if (!ret) {
		FUNC2(component->dev, "Timeout waiting for HPLOAD interrupt\n");
		return -1;
	}

	FUNC1(component->dev, "HP load stat: %x, INT_MASK_4: %x\n",
		cs43130->hpload_stat, msk);
	if ((cs43130->hpload_stat & (CS43130_HPLOAD_NO_DC_INT |
				     CS43130_HPLOAD_UNPLUG_INT |
				     CS43130_HPLOAD_OOR_INT)) ||
	    !(cs43130->hpload_stat & rslt_msk)) {
		FUNC1(component->dev, "HP load measure failed\n");
		return -1;
	}

	return 0;
}