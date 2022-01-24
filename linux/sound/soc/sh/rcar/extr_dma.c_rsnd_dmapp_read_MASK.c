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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_dma_ctrl*,struct rsnd_dma*,int /*<<< orphan*/ ) ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dma*) ; 
 struct rsnd_priv* FUNC3 (struct rsnd_mod*) ; 
 struct rsnd_dma_ctrl* FUNC4 (struct rsnd_priv*) ; 

__attribute__((used)) static u32 FUNC5(struct rsnd_dma *dma, u32 reg)
{
	struct rsnd_mod *mod = FUNC2(dma);
	struct rsnd_priv *priv = FUNC3(mod);
	struct rsnd_dma_ctrl *dmac = FUNC4(priv);

	return FUNC0(FUNC1(dmac, dma, reg));
}