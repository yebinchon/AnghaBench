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
struct rsnd_gen {int /*<<< orphan*/ * regs; } ;
struct device {int dummy; } ;
typedef  enum rsnd_reg { ____Placeholder_rsnd_reg } rsnd_reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_priv*,struct rsnd_gen*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_mod*) ; 
 struct rsnd_priv* FUNC5 (struct rsnd_mod*) ; 
 struct device* FUNC6 (struct rsnd_priv*) ; 
 struct rsnd_gen* FUNC7 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsnd_gen*,int) ; 

void FUNC9(struct rsnd_mod *mod,
		   enum rsnd_reg reg, u32 mask, u32 data)
{
	struct rsnd_priv *priv = FUNC5(mod);
	struct device *dev = FUNC6(priv);
	struct rsnd_gen *gen = FUNC7(priv);

	if (!FUNC2(priv, gen, reg))
		return;

	FUNC1(gen->regs[reg],
					FUNC3(mod), mask, data);

	FUNC0(dev, "b %s - %-18s (%4d) : %08x/%08x\n",
		FUNC4(mod),
		FUNC8(gen, reg), reg, data, mask);

}