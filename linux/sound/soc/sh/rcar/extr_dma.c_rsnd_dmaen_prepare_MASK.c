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
struct rsnd_dmaen {int /*<<< orphan*/ * chan; } ;
struct rsnd_dma {int /*<<< orphan*/  mod_to; int /*<<< orphan*/  mod_from; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct rsnd_dmaen* FUNC2 (struct rsnd_dma*) ; 
 int /*<<< orphan*/ * FUNC3 (struct rsnd_dai_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rsnd_dma* FUNC4 (struct rsnd_mod*) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 

__attribute__((used)) static int FUNC6(struct rsnd_mod *mod,
			      struct rsnd_dai_stream *io,
			      struct rsnd_priv *priv)
{
	struct rsnd_dma *dma = FUNC4(mod);
	struct rsnd_dmaen *dmaen = FUNC2(dma);
	struct device *dev = FUNC5(priv);

	/* maybe suspended */
	if (dmaen->chan)
		return 0;

	/*
	 * DMAEngine request uses mutex lock.
	 * Thus, it shouldn't be called under spinlock.
	 * Let's call it under prepare
	 */
	dmaen->chan = FUNC3(io,
						 dma->mod_from,
						 dma->mod_to);
	if (FUNC0(dmaen->chan)) {
		dmaen->chan = NULL;
		FUNC1(dev, "can't get dma channel\n");
		return -EIO;
	}

	return 0;
}