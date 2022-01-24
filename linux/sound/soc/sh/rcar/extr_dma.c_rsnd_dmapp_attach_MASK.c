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
struct rsnd_dmapp {int chcr; int /*<<< orphan*/  dmapp_id; } ;
struct rsnd_dma_ctrl {int /*<<< orphan*/  dmapp_num; } ;
struct rsnd_dma {int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PDMACHCR_DE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct rsnd_dmapp* FUNC1 (struct rsnd_dma*) ; 
 int FUNC2 (struct rsnd_dai_stream*,struct rsnd_mod*,struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC3 (struct rsnd_dai_stream*) ; 
 struct device* FUNC4 (struct rsnd_priv*) ; 
 struct rsnd_dma_ctrl* FUNC5 (struct rsnd_priv*) ; 

__attribute__((used)) static int FUNC6(struct rsnd_dai_stream *io,
			     struct rsnd_dma *dma,
			     struct rsnd_mod *mod_from, struct rsnd_mod *mod_to)
{
	struct rsnd_dmapp *dmapp = FUNC1(dma);
	struct rsnd_priv *priv = FUNC3(io);
	struct rsnd_dma_ctrl *dmac = FUNC5(priv);
	struct device *dev = FUNC4(priv);

	dmapp->dmapp_id = dmac->dmapp_num;
	dmapp->chcr = FUNC2(io, mod_from, mod_to) | PDMACHCR_DE;

	dmac->dmapp_num++;

	FUNC0(dev, "id/src/dst/chcr = %d/%pad/%pad/%08x\n",
		dmapp->dmapp_id, &dma->src_addr, &dma->dst_addr, dmapp->chcr);

	return 0;
}