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
struct tas6424_data {scalar_t__ mute_gpio; int /*<<< orphan*/  regmap; int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAS6424_ALL_STATE_MUTE ; 
 int /*<<< orphan*/  TAS6424_ALL_STATE_PLAY ; 
 int /*<<< orphan*/  TAS6424_CH_STATE_CTRL ; 
 int /*<<< orphan*/  TAS6424_DC_DIAG_CTRL1 ; 
 unsigned int TAS6424_LDGBYPASS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tas6424_data* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct tas6424_data *tas6424 = FUNC8(component);
	int ret;
	u8 chan_states;
	int no_auto_diags = 0;
	unsigned int reg_val;

	if (!FUNC6(tas6424->regmap, TAS6424_DC_DIAG_CTRL1, &reg_val))
		no_auto_diags = reg_val & TAS6424_LDGBYPASS_MASK;

	ret = FUNC7(FUNC0(tas6424->supplies),
				    tas6424->supplies);
	if (ret < 0) {
		FUNC1(component->dev, "failed to enable supplies: %d\n", ret);
		return ret;
	}

	FUNC4(tas6424->regmap, false);

	ret = FUNC5(tas6424->regmap);
	if (ret < 0) {
		FUNC1(component->dev, "failed to sync regcache: %d\n", ret);
		return ret;
	}

	if (tas6424->mute_gpio) {
		FUNC2(tas6424->mute_gpio, 0);
		/*
		 * channels are muted via the mute pin.  Don't also mute
		 * them via the registers so that subsequent register
		 * access is not necessary to un-mute the channels
		 */
		chan_states = TAS6424_ALL_STATE_PLAY;
	} else {
		chan_states = TAS6424_ALL_STATE_MUTE;
	}
	FUNC9(component, TAS6424_CH_STATE_CTRL, chan_states);

	/* any time we come out of HIZ, the output channels automatically run DC
	 * load diagnostics if autodiagnotics are enabled. wait here until this
	 * completes.
	 */
	if (!no_auto_diags)
		FUNC3(230);

	return 0;
}