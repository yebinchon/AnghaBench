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
struct rsnd_dai_stream {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int FUNC0 (struct rsnd_dai_stream*,struct rsnd_mod*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rsnd_mod*,struct rsnd_dai_stream*,struct rsnd_priv*) ; 
 scalar_t__ FUNC2 (struct rsnd_mod*,struct rsnd_dai_stream*) ; 

__attribute__((used)) static int FUNC3(struct rsnd_mod *mod,
			      struct rsnd_dai_stream *io,
			      struct rsnd_priv *priv)
{
	int ret;

	/*
	 * SSIP/SSIU/IRQ/DMA are not needed on
	 * SSI Multi slaves
	 */
	if (FUNC2(mod, io))
		return 0;

	ret = FUNC1(mod, io, priv);
	if (ret)
		return ret;

	/* SSI probe might be called many times in MUX multi path */
	ret = FUNC0(io, mod, &io->dma);

	return ret;
}