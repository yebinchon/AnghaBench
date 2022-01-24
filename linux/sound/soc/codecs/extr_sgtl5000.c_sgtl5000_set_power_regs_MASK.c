#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct sgtl5000_priv {size_t num_supplies; TYPE_1__* supplies; } ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int EINVAL ; 
 int LDO_VOLTAGE ; 
 int SGTL5000_ADC_STEREO ; 
 int SGTL5000_ANA_GND_BASE ; 
 int SGTL5000_ANA_GND_MASK ; 
 int SGTL5000_ANA_GND_SHIFT ; 
 int SGTL5000_ANA_GND_STP ; 
 int /*<<< orphan*/  SGTL5000_CHIP_ANA_POWER ; 
 int /*<<< orphan*/  SGTL5000_CHIP_CLK_TOP_CTRL ; 
 int /*<<< orphan*/  SGTL5000_CHIP_LINE_OUT_CTRL ; 
 int /*<<< orphan*/  SGTL5000_CHIP_LINE_OUT_VOL ; 
 int /*<<< orphan*/  SGTL5000_CHIP_LINREG_CTRL ; 
 int /*<<< orphan*/  SGTL5000_CHIP_REF_CTRL ; 
 int SGTL5000_DAC_STEREO ; 
 int SGTL5000_INT_OSC_EN ; 
 int SGTL5000_LINE_OUT_CURRENT_360u ; 
 int SGTL5000_LINE_OUT_CURRENT_MASK ; 
 int SGTL5000_LINE_OUT_CURRENT_SHIFT ; 
 int SGTL5000_LINE_OUT_GND_BASE ; 
 int SGTL5000_LINE_OUT_GND_MASK ; 
 int SGTL5000_LINE_OUT_GND_MAX ; 
 int SGTL5000_LINE_OUT_GND_SHIFT ; 
 int SGTL5000_LINE_OUT_GND_STP ; 
 int SGTL5000_LINE_OUT_VOL_LEFT_MASK ; 
 int SGTL5000_LINE_OUT_VOL_LEFT_SHIFT ; 
 int SGTL5000_LINE_OUT_VOL_RIGHT_MASK ; 
 int SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT ; 
 int SGTL5000_REFTOP_POWERUP ; 
 int SGTL5000_VDDC_ASSN_OVRD ; 
 int SGTL5000_VDDC_CHRGPMP_POWERUP ; 
 int SGTL5000_VDDC_MAN_ASSN_SHIFT ; 
 int SGTL5000_VDDC_MAN_ASSN_VDDIO ; 
 size_t VDDA ; 
 size_t VDDD ; 
 size_t VDDIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sgtl5000_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int* vol_quot_table ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	int vddd;
	int vdda;
	int vddio;
	u16 ana_pwr;
	u16 lreg_ctrl;
	int vag;
	int lo_vag;
	int vol_quot;
	int lo_vol;
	size_t i;
	struct sgtl5000_priv *sgtl5000 = FUNC3(component);

	vdda  = FUNC2(sgtl5000->supplies[VDDA].consumer);
	vddio = FUNC2(sgtl5000->supplies[VDDIO].consumer);
	vddd  = (sgtl5000->num_supplies > VDDD)
		? FUNC2(sgtl5000->supplies[VDDD].consumer)
		: LDO_VOLTAGE;

	vdda  = vdda / 1000;
	vddio = vddio / 1000;
	vddd  = vddd / 1000;

	if (vdda <= 0 || vddio <= 0 || vddd < 0) {
		FUNC1(component->dev, "regulator voltage not set correctly\n");

		return -EINVAL;
	}

	/* according to datasheet, maximum voltage of supplies */
	if (vdda > 3600 || vddio > 3600 || vddd > 1980) {
		FUNC1(component->dev,
			"exceed max voltage vdda %dmV vddio %dmV vddd %dmV\n",
			vdda, vddio, vddd);

		return -EINVAL;
	}

	/* reset value */
	ana_pwr = FUNC4(component, SGTL5000_CHIP_ANA_POWER);
	ana_pwr |= SGTL5000_DAC_STEREO |
			SGTL5000_ADC_STEREO |
			SGTL5000_REFTOP_POWERUP;
	lreg_ctrl = FUNC4(component, SGTL5000_CHIP_LINREG_CTRL);

	if (vddio < 3100 && vdda < 3100) {
		/* enable internal oscillator used for charge pump */
		FUNC5(component, SGTL5000_CHIP_CLK_TOP_CTRL,
					SGTL5000_INT_OSC_EN,
					SGTL5000_INT_OSC_EN);
		/* Enable VDDC charge pump */
		ana_pwr |= SGTL5000_VDDC_CHRGPMP_POWERUP;
	} else {
		ana_pwr &= ~SGTL5000_VDDC_CHRGPMP_POWERUP;
		/*
		 * if vddio == vdda the source of charge pump should be
		 * assigned manually to VDDIO
		 */
		if (vddio == vdda) {
			lreg_ctrl |= SGTL5000_VDDC_ASSN_OVRD;
			lreg_ctrl |= SGTL5000_VDDC_MAN_ASSN_VDDIO <<
				    SGTL5000_VDDC_MAN_ASSN_SHIFT;
		}
	}

	FUNC6(component, SGTL5000_CHIP_LINREG_CTRL, lreg_ctrl);

	FUNC6(component, SGTL5000_CHIP_ANA_POWER, ana_pwr);

	/*
	 * set ADC/DAC VAG to vdda / 2,
	 * should stay in range (0.8v, 1.575v)
	 */
	vag = vdda / 2;
	if (vag <= SGTL5000_ANA_GND_BASE)
		vag = 0;
	else if (vag >= SGTL5000_ANA_GND_BASE + SGTL5000_ANA_GND_STP *
		 (SGTL5000_ANA_GND_MASK >> SGTL5000_ANA_GND_SHIFT))
		vag = SGTL5000_ANA_GND_MASK >> SGTL5000_ANA_GND_SHIFT;
	else
		vag = (vag - SGTL5000_ANA_GND_BASE) / SGTL5000_ANA_GND_STP;

	FUNC5(component, SGTL5000_CHIP_REF_CTRL,
			SGTL5000_ANA_GND_MASK, vag << SGTL5000_ANA_GND_SHIFT);

	/* set line out VAG to vddio / 2, in range (0.8v, 1.675v) */
	lo_vag = vddio / 2;
	if (lo_vag <= SGTL5000_LINE_OUT_GND_BASE)
		lo_vag = 0;
	else if (lo_vag >= SGTL5000_LINE_OUT_GND_BASE +
		SGTL5000_LINE_OUT_GND_STP * SGTL5000_LINE_OUT_GND_MAX)
		lo_vag = SGTL5000_LINE_OUT_GND_MAX;
	else
		lo_vag = (lo_vag - SGTL5000_LINE_OUT_GND_BASE) /
		    SGTL5000_LINE_OUT_GND_STP;

	FUNC5(component, SGTL5000_CHIP_LINE_OUT_CTRL,
			SGTL5000_LINE_OUT_CURRENT_MASK |
			SGTL5000_LINE_OUT_GND_MASK,
			lo_vag << SGTL5000_LINE_OUT_GND_SHIFT |
			SGTL5000_LINE_OUT_CURRENT_360u <<
				SGTL5000_LINE_OUT_CURRENT_SHIFT);

	/*
	 * Set lineout output level in range (0..31)
	 * the same value is used for right and left channel
	 *
	 * Searching for a suitable index solving this formula:
	 * idx = 40 * log10(vag_val / lo_cagcntrl) + 15
	 */
	vol_quot = lo_vag ? (vag * 100) / lo_vag : 0;
	lo_vol = 0;
	for (i = 0; i < FUNC0(vol_quot_table); i++) {
		if (vol_quot >= vol_quot_table[i])
			lo_vol = i;
		else
			break;
	}

	FUNC5(component, SGTL5000_CHIP_LINE_OUT_VOL,
		SGTL5000_LINE_OUT_VOL_RIGHT_MASK |
		SGTL5000_LINE_OUT_VOL_LEFT_MASK,
		lo_vol << SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT |
		lo_vol << SGTL5000_LINE_OUT_VOL_LEFT_SHIFT);

	return 0;
}