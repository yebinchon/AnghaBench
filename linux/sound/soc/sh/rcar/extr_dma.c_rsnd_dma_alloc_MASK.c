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
struct rsnd_mod_ops {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma_ctrl {int dmapp_num; int dmaen_num; } ;
struct rsnd_dma {struct rsnd_mod* mod_to; struct rsnd_mod* mod_from; void* dst_addr; void* src_addr; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;
typedef  enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RSND_MOD_AUDMA ; 
 int RSND_MOD_AUDMAPP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rsnd_dma* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct rsnd_mod mem ; 
 void* FUNC2 (struct rsnd_dai_stream*,struct rsnd_mod*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*,struct rsnd_dai_stream*,int,struct rsnd_mod**,struct rsnd_mod**) ; 
 int FUNC4 (struct rsnd_dai_stream*,struct rsnd_dma*,struct rsnd_mod*,struct rsnd_mod*) ; 
 struct rsnd_mod_ops rsnd_dmaen_ops ; 
 int FUNC5 (struct rsnd_dai_stream*,struct rsnd_dma*,struct rsnd_mod*,struct rsnd_mod*) ; 
 struct rsnd_mod_ops rsnd_dmapp_ops ; 
 int FUNC6 (struct rsnd_dai_stream*) ; 
 struct rsnd_priv* FUNC7 (struct rsnd_dai_stream*) ; 
 scalar_t__ FUNC8 (struct rsnd_priv*) ; 
 struct rsnd_mod* FUNC9 (struct rsnd_dma*) ; 
 int FUNC10 (struct rsnd_priv*,struct rsnd_mod*,struct rsnd_mod_ops*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rsnd_mod*) ; 
 struct device* FUNC12 (struct rsnd_priv*) ; 
 struct rsnd_dma_ctrl* FUNC13 (struct rsnd_priv*) ; 

__attribute__((used)) static int FUNC14(struct rsnd_dai_stream *io, struct rsnd_mod *mod,
			  struct rsnd_mod **dma_mod)
{
	struct rsnd_mod *mod_from = NULL;
	struct rsnd_mod *mod_to = NULL;
	struct rsnd_priv *priv = FUNC7(io);
	struct rsnd_dma_ctrl *dmac = FUNC13(priv);
	struct device *dev = FUNC12(priv);
	struct rsnd_dma *dma;
	struct rsnd_mod_ops *ops;
	enum rsnd_mod_type type;
	int (*attach)(struct rsnd_dai_stream *io, struct rsnd_dma *dma,
		      struct rsnd_mod *mod_from, struct rsnd_mod *mod_to);
	int is_play = FUNC6(io);
	int ret, dma_id;

	/*
	 * DMA failed. try to PIO mode
	 * see
	 *	rsnd_ssi_fallback()
	 *	rsnd_rdai_continuance_probe()
	 */
	if (!dmac)
		return -EAGAIN;

	FUNC3(mod, io, is_play, &mod_from, &mod_to);

	/* for Gen2 or later */
	if (mod_from && mod_to) {
		ops	= &rsnd_dmapp_ops;
		attach	= rsnd_dmapp_attach;
		dma_id	= dmac->dmapp_num;
		type	= RSND_MOD_AUDMAPP;
	} else {
		ops	= &rsnd_dmaen_ops;
		attach	= rsnd_dmaen_attach;
		dma_id	= dmac->dmaen_num;
		type	= RSND_MOD_AUDMA;
	}

	/* for Gen1, overwrite */
	if (FUNC8(priv)) {
		ops	= &rsnd_dmaen_ops;
		attach	= rsnd_dmaen_attach;
		dma_id	= dmac->dmaen_num;
		type	= RSND_MOD_AUDMA;
	}

	dma = FUNC1(dev, sizeof(*dma), GFP_KERNEL);
	if (!dma)
		return -ENOMEM;

	*dma_mod = FUNC9(dma);

	ret = FUNC10(priv, *dma_mod, ops, NULL,
			    type, dma_id);
	if (ret < 0)
		return ret;

	FUNC0(dev, "%s %s -> %s\n",
		FUNC11(*dma_mod),
		FUNC11(mod_from ? mod_from : &mem),
		FUNC11(mod_to   ? mod_to   : &mem));

	ret = attach(io, dma, mod_from, mod_to);
	if (ret < 0)
		return ret;

	dma->src_addr = FUNC2(io, mod_from, is_play, 1);
	dma->dst_addr = FUNC2(io, mod_to,   is_play, 0);
	dma->mod_from = mod_from;
	dma->mod_to   = mod_to;

	return 0;
}