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
typedef  int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_adg {int ckr; int /*<<< orphan*/  rbga_rate_for_441khz; int /*<<< orphan*/  rbgb_rate_for_48khz; int /*<<< orphan*/  rbgb; int /*<<< orphan*/  rbga; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_OUT_48 ; 
 int /*<<< orphan*/  BRGCKR ; 
 int /*<<< orphan*/  BRRA ; 
 int /*<<< orphan*/  BRRB ; 
 int /*<<< orphan*/  LRCLK_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rsnd_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_mod*,int) ; 
 scalar_t__ FUNC3 (struct rsnd_adg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*,int /*<<< orphan*/ ,int,int) ; 
 struct rsnd_mod* FUNC5 (struct rsnd_adg*) ; 
 struct rsnd_priv* FUNC6 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsnd_mod*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rsnd_adg* FUNC8 (struct rsnd_priv*) ; 
 struct device* FUNC9 (struct rsnd_priv*) ; 

int FUNC10(struct rsnd_mod *ssi_mod, unsigned int rate)
{
	struct rsnd_priv *priv = FUNC6(ssi_mod);
	struct rsnd_adg *adg = FUNC8(priv);
	struct device *dev = FUNC9(priv);
	struct rsnd_mod *adg_mod = FUNC5(adg);
	int data;
	u32 ckr = 0;

	data = FUNC1(priv, rate);
	if (data < 0)
		return data;

	FUNC2(ssi_mod, data);

	if (FUNC3(adg, LRCLK_ASYNC)) {
		if (FUNC3(adg, AUDIO_OUT_48))
			ckr = 0x80000000;
	} else {
		if (0 == (rate % 8000))
			ckr = 0x80000000;
	}

	FUNC4(adg_mod, BRGCKR, 0x80770000, adg->ckr | ckr);
	FUNC7(adg_mod, BRRA,  adg->rbga);
	FUNC7(adg_mod, BRRB,  adg->rbgb);

	FUNC0(dev, "CLKOUT is based on BRG%c (= %dHz)\n",
		(ckr) ? 'B' : 'A',
		(ckr) ?	adg->rbgb_rate_for_48khz :
			adg->rbga_rate_for_441khz);

	return 0;
}