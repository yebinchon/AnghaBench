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
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MOD_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct rsnd_mod mem ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_dai_stream*,int) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC3 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC4 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC5 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC6 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC7 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC9 (struct rsnd_mod*) ; 
 struct device* FUNC10 (struct rsnd_priv*) ; 
 scalar_t__ FUNC11 (struct rsnd_priv*) ; 

__attribute__((used)) static void FUNC12(struct rsnd_mod *this,
			     struct rsnd_dai_stream *io,
			     int is_play,
			     struct rsnd_mod **mod_from,
			     struct rsnd_mod **mod_to)
{
	struct rsnd_mod *ssi;
	struct rsnd_mod *src = FUNC5(io);
	struct rsnd_mod *ctu = FUNC2(io);
	struct rsnd_mod *mix = FUNC4(io);
	struct rsnd_mod *dvc = FUNC3(io);
	struct rsnd_mod *mod[MOD_MAX];
	struct rsnd_mod *mod_start, *mod_end;
	struct rsnd_priv *priv = FUNC9(this);
	struct device *dev = FUNC10(priv);
	int nr, i, idx;

	/*
	 * It should use "rcar_sound,ssiu" on DT.
	 * But, we need to keep compatibility for old version.
	 *
	 * If it has "rcar_sound.ssiu", it will be used.
	 * If not, "rcar_sound.ssi" will be used.
	 * see
	 *	rsnd_ssiu_dma_req()
	 *	rsnd_ssi_dma_req()
	 */
	if (FUNC11(priv)) {
		struct rsnd_mod *ssiu = FUNC7(io);

		/* use SSIU */
		ssi = ssiu;
		if (this == FUNC6(io))
			this = ssiu;
	} else {
		/* keep compatible, use SSI */
		ssi = FUNC6(io);
	}

	if (!ssi)
		return;

	nr = 0;
	for (i = 0; i < MOD_MAX; i++) {
		mod[i] = NULL;
		nr += !!FUNC1(io, i);
	}

	/*
	 * [S] -*-> [E]
	 * [S] -*-> SRC -o-> [E]
	 * [S] -*-> SRC -> DVC -o-> [E]
	 * [S] -*-> SRC -> CTU -> MIX -> DVC -o-> [E]
	 *
	 * playback	[S] = mem
	 *		[E] = SSI
	 *
	 * capture	[S] = SSI
	 *		[E] = mem
	 *
	 * -*->		Audio DMAC
	 * -o->		Audio DMAC peri peri
	 */
	mod_start	= (is_play) ? NULL : ssi;
	mod_end		= (is_play) ? ssi  : NULL;

	idx = 0;
	mod[idx++] = mod_start;
	for (i = 1; i < nr; i++) {
		if (src) {
			mod[idx++] = src;
			src = NULL;
		} else if (ctu) {
			mod[idx++] = ctu;
			ctu = NULL;
		} else if (mix) {
			mod[idx++] = mix;
			mix = NULL;
		} else if (dvc) {
			mod[idx++] = dvc;
			dvc = NULL;
		}
	}
	mod[idx] = mod_end;

	/*
	 *		| SSI | SRC |
	 * -------------+-----+-----+
	 *  is_play	|  o  |  *  |
	 * !is_play	|  *  |  o  |
	 */
	if ((this == ssi) == (is_play)) {
		*mod_from	= mod[idx - 1];
		*mod_to		= mod[idx];
	} else {
		*mod_from	= mod[0];
		*mod_to		= mod[1];
	}

	FUNC0(dev, "module connection (this is %s)\n", FUNC8(this));
	for (i = 0; i <= idx; i++) {
		FUNC0(dev, "  %s%s\n",
			FUNC8(mod[i] ? mod[i] : &mem),
			(mod[i] == *mod_from) ? " from" :
			(mod[i] == *mod_to)   ? " to" : "");
	}
}