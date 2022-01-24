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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsnd_dai_stream*,struct rsnd_mod*,int,int) ; 
 struct rsnd_priv* FUNC1 (struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC2 (struct rsnd_priv*) ; 

__attribute__((used)) static dma_addr_t FUNC3(struct rsnd_dai_stream *io,
				struct rsnd_mod *mod,
				int is_play, int is_from)
{
	struct rsnd_priv *priv = FUNC1(io);

	/*
	 * gen1 uses default DMA addr
	 */
	if (FUNC2(priv))
		return 0;

	if (!mod)
		return 0;

	return FUNC0(io, mod, is_play, is_from);
}