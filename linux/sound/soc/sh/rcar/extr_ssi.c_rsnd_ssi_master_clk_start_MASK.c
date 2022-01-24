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
struct rsnd_ssi {scalar_t__ usrcnt; unsigned int rate; int chan; int cr_clk; int /*<<< orphan*/  wsr; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CONT ; 
 int EINVAL ; 
 int EIO ; 
 int FORCE ; 
 int SCKD ; 
 int SWSD ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct rsnd_mod*,unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC6 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC7 (struct rsnd_dai_stream*) ; 
 struct rsnd_dai* FUNC8 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct rsnd_mod*) ; 
 struct rsnd_ssi* FUNC10 (struct rsnd_mod*) ; 
 struct device* FUNC11 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct rsnd_dai*) ; 
 int FUNC13 (struct rsnd_dai*) ; 
 int FUNC14 (struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC15 (struct rsnd_dai_stream*) ; 
 unsigned int FUNC16 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 
 unsigned int FUNC17 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC18 (struct rsnd_mod*) ; 
 unsigned int FUNC19 (struct rsnd_dai*,unsigned int,int,int*) ; 
 scalar_t__ FUNC20 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC21(struct rsnd_mod *mod,
				     struct rsnd_dai_stream *io)
{
	struct rsnd_priv *priv = FUNC7(io);
	struct device *dev = FUNC11(priv);
	struct rsnd_dai *rdai = FUNC8(io);
	struct rsnd_ssi *ssi = FUNC10(mod);
	int chan = FUNC14(io);
	int idx, ret;
	unsigned int main_rate;
	unsigned int rate = FUNC6(io) ?
		FUNC17(priv, io) :
		FUNC16(priv, io);

	if (!FUNC12(rdai))
		return 0;

	if (!FUNC18(mod))
		return 0;

	if (FUNC20(mod, io))
		return 0;

	if (FUNC15(io))
		chan = FUNC5(io);

	chan = FUNC4(chan);

	if (ssi->usrcnt > 0) {
		if (ssi->rate != rate) {
			FUNC2(dev, "SSI parent/child should use same rate\n");
			return -EINVAL;
		}

		if (ssi->chan != chan) {
			FUNC2(dev, "SSI parent/child should use same chan\n");
			return -EINVAL;
		}

		return 0;
	}

	main_rate = FUNC19(rdai, rate, chan, &idx);
	if (!main_rate) {
		FUNC2(dev, "unsupported clock rate\n");
		return -EIO;
	}

	ret = FUNC3(mod, main_rate);
	if (ret < 0)
		return ret;

	/*
	 * SSI clock will be output contiguously
	 * by below settings.
	 * This means, rsnd_ssi_master_clk_start()
	 * and rsnd_ssi_register_setup() are necessary
	 * for SSI parent
	 *
	 * SSICR  : FORCE, SCKD, SWSD
	 * SSIWSR : CONT
	 */
	ssi->cr_clk = FORCE | FUNC13(rdai) |
			SCKD | SWSD | FUNC0(idx);
	ssi->wsr = CONT;
	ssi->rate = rate;
	ssi->chan = chan;

	FUNC1(dev, "%s outputs %d chan %u Hz\n",
		FUNC9(mod), chan, rate);

	return 0;
}