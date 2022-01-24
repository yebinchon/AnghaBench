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
typedef  int uint ;
typedef  int u64 ;
typedef  int u32 ;
struct snd_pcm_runtime {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  SRC_ADINR ; 
 int /*<<< orphan*/  SRC_BSDSR ; 
 int /*<<< orphan*/  SRC_BSISR ; 
 int /*<<< orphan*/  SRC_BUSIF_DALIGN ; 
 int /*<<< orphan*/  SRC_IFSCR ; 
 int /*<<< orphan*/  SRC_IFSVR ; 
 int /*<<< orphan*/  SRC_I_BUSIF_MODE ; 
 int /*<<< orphan*/  SRC_O_BUSIF_MODE ; 
 int /*<<< orphan*/  SRC_ROUTE_MODE0 ; 
 int /*<<< orphan*/  SRC_SRCCR ; 
 int /*<<< orphan*/  SRC_SRCIR ; 
 int* bsdsr_table_pattern1 ; 
 int* bsdsr_table_pattern2 ; 
 int* bsisr_table ; 
 int* chan222222 ; 
 int* chan244888 ; 
 int* chan288888 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*,int,int) ; 
 int FUNC4 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int FUNC5 (struct rsnd_dai_stream*,struct rsnd_mod*) ; 
 int FUNC6 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 
 int FUNC7 (struct rsnd_dai_stream*) ; 
 struct snd_pcm_runtime* FUNC8 (struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC9 (struct rsnd_priv*) ; 
 int FUNC10 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC11 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC12 (struct rsnd_mod*,int /*<<< orphan*/ ,int const) ; 
 struct device* FUNC13 (struct rsnd_priv*) ; 
 int FUNC14 (struct rsnd_dai_stream*) ; 
 int FUNC15 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 
 int FUNC16 (struct rsnd_priv*,struct rsnd_dai_stream*) ; 
 int FUNC17 (struct rsnd_mod*) ; 

__attribute__((used)) static void FUNC18(struct rsnd_dai_stream *io,
				      struct rsnd_mod *mod)
{
	struct rsnd_priv *priv = FUNC11(mod);
	struct device *dev = FUNC13(priv);
	struct snd_pcm_runtime *runtime = FUNC8(io);
	int is_play = FUNC7(io);
	int use_src = 0;
	u32 fin, fout;
	u32 ifscr, fsrate, adinr;
	u32 cr, route;
	u32 i_busif, o_busif, tmp;
	const u32 *bsdsr_table;
	const u32 *chptn;
	uint ratio;
	int chan;
	int idx;

	if (!runtime)
		return;

	fin  = FUNC15(priv, io);
	fout = FUNC16(priv, io);

	chan = FUNC14(io);

	/* 6 - 1/6 are very enough ratio for SRC_BSDSR */
	if (fin == fout)
		ratio = 0;
	else if (fin > fout)
		ratio = 100 * fin / fout;
	else
		ratio = 100 * fout / fin;

	if (ratio > 600) {
		FUNC1(dev, "FSO/FSI ratio error\n");
		return;
	}

	use_src = (fin != fout) | FUNC17(mod);

	/*
	 * SRC_ADINR
	 */
	adinr = FUNC4(mod, io) | chan;

	/*
	 * SRC_IFSCR / SRC_IFSVR
	 */
	ifscr = 0;
	fsrate = 0;
	if (use_src) {
		u64 n;

		ifscr = 1;
		n = (u64)0x0400000 * fin;
		FUNC2(n, fout);
		fsrate = n;
	}

	/*
	 * SRC_SRCCR / SRC_ROUTE_MODE0
	 */
	cr	= 0x00011110;
	route	= 0x0;
	if (use_src) {
		route	= 0x1;

		if (FUNC17(mod)) {
			cr |= 0x1;
			route |= FUNC7(io) ?
				(0x1 << 24) : (0x1 << 25);
		}
	}

	/*
	 * SRC_BSDSR / SRC_BSISR
	 *
	 * see
	 *	Combination of Register Setting Related to
	 *	FSO/FSI Ratio and Channel, Latency
	 */
	switch (FUNC10(mod)) {
	case 0:
		chptn		= chan288888;
		bsdsr_table	= bsdsr_table_pattern1;
		break;
	case 1:
	case 3:
	case 4:
		chptn		= chan244888;
		bsdsr_table	= bsdsr_table_pattern1;
		break;
	case 2:
	case 9:
		chptn		= chan222222;
		bsdsr_table	= bsdsr_table_pattern1;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		chptn		= chan222222;
		bsdsr_table	= bsdsr_table_pattern2;
		break;
	default:
		goto convert_rate_err;
	}

	/*
	 * E3 need to overwrite
	 */
	if (FUNC9(priv))
		switch (FUNC10(mod)) {
		case 0:
		case 4:
			chptn	= chan222222;
		}

	for (idx = 0; idx < FUNC0(chan222222); idx++)
		if (chptn[idx] & (1 << chan))
			break;

	if (chan > 8 ||
	    idx >= FUNC0(chan222222))
		goto convert_rate_err;

	/* BUSIF_MODE */
	tmp = FUNC5(io, mod);
	i_busif = ( is_play ? tmp : 0) | 1;
	o_busif = (!is_play ? tmp : 0) | 1;

	FUNC12(mod, SRC_ROUTE_MODE0, route);

	FUNC12(mod, SRC_SRCIR, 1);	/* initialize */
	FUNC12(mod, SRC_ADINR, adinr);
	FUNC12(mod, SRC_IFSCR, ifscr);
	FUNC12(mod, SRC_IFSVR, fsrate);
	FUNC12(mod, SRC_SRCCR, cr);
	FUNC12(mod, SRC_BSDSR, bsdsr_table[idx]);
	FUNC12(mod, SRC_BSISR, bsisr_table[idx]);
	FUNC12(mod, SRC_SRCIR, 0);	/* cancel initialize */

	FUNC12(mod, SRC_I_BUSIF_MODE, i_busif);
	FUNC12(mod, SRC_O_BUSIF_MODE, o_busif);

	FUNC12(mod, SRC_BUSIF_DALIGN, FUNC6(mod, io));

	FUNC3(mod, io, fin, fout);

	return;

convert_rate_err:
	FUNC1(dev, "unknown BSDSR/BSDIR settings\n");
}