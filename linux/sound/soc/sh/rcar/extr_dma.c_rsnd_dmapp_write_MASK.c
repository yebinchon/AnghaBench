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
typedef  int /*<<< orphan*/  u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma_ctrl {int dummy; } ;
struct rsnd_dma {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dma_ctrl*,struct rsnd_dma*,int /*<<< orphan*/ ) ; 
 struct rsnd_mod* FUNC3 (struct rsnd_dma*) ; 
 struct rsnd_priv* FUNC4 (struct rsnd_mod*) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 
 struct rsnd_dma_ctrl* FUNC6 (struct rsnd_priv*) ; 

__attribute__((used)) static void FUNC7(struct rsnd_dma *dma, u32 data, u32 reg)
{
	struct rsnd_mod *mod = FUNC3(dma);
	struct rsnd_priv *priv = FUNC4(mod);
	struct rsnd_dma_ctrl *dmac = FUNC6(priv);
	struct device *dev = FUNC5(priv);

	FUNC0(dev, "w 0x%px : %08x\n", FUNC2(dmac, dma, reg), data);

	FUNC1(data, FUNC2(dmac, dma, reg));
}