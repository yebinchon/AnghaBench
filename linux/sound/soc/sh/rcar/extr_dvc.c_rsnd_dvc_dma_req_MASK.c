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
 int /*<<< orphan*/  FUNC1 (struct rsnd_priv*) ; 
 struct rsnd_priv* FUNC2 (struct rsnd_mod*) ; 

__attribute__((used)) static struct dma_chan *FUNC3(struct rsnd_dai_stream *io,
					 struct rsnd_mod *mod)
{
	struct rsnd_priv *priv = FUNC2(mod);

	return FUNC0(FUNC1(priv),
					mod, "tx");
}