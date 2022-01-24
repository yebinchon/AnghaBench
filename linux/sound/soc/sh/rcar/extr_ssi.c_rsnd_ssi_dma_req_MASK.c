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
struct dma_chan {int dummy; } ;

/* Variables and functions */
 struct dma_chan* FUNC0 (int /*<<< orphan*/ ,struct rsnd_mod*,char*) ; 
 int FUNC1 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC2 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_priv*) ; 
 scalar_t__ FUNC4 (struct rsnd_dai_stream*) ; 

__attribute__((used)) static struct dma_chan *FUNC5(struct rsnd_dai_stream *io,
					 struct rsnd_mod *mod)
{
	struct rsnd_priv *priv = FUNC2(mod);
	int is_play = FUNC1(io);
	char *name;

	/*
	 * It should use "rcar_sound,ssiu" on DT.
	 * But, we need to keep compatibility for old version.
	 *
	 * If it has "rcar_sound.ssiu", it will be used.
	 * If not, "rcar_sound.ssi" will be used.
	 * see
	 *	rsnd_ssiu_dma_req()
	 *	rsnd_dma_of_path()
	 */

	if (FUNC4(io))
		name = is_play ? "rxu" : "txu";
	else
		name = is_play ? "rx" : "tx";

	return FUNC0(FUNC3(priv),
					mod, name);
}