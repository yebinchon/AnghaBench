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
struct rsnd_gen {int /*<<< orphan*/ * regs; } ;
struct device {int dummy; } ;
typedef  enum rsnd_reg { ____Placeholder_rsnd_reg } rsnd_reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct device* FUNC1 (struct rsnd_priv*) ; 

__attribute__((used)) static int FUNC2(struct rsnd_priv *priv,
				  struct rsnd_gen *gen, enum rsnd_reg reg)
{
	if (!gen->regs[reg]) {
		struct device *dev = FUNC1(priv);

		FUNC0(dev, "unsupported register access %x\n", reg);
		return 0;
	}

	return 1;
}