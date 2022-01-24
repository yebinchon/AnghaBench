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
typedef  scalar_t__ u8 ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {scalar_t__ rxclk_src; struct regmap* regmap; } ;
typedef  enum spdif_gainsel { ____Placeholder_spdif_gainsel } spdif_gainsel ;

/* Variables and functions */
 int EINVAL ; 
 int GAINSEL_MULTI_MAX ; 
 int /*<<< orphan*/  REG_SPDIF_SRPC ; 
 scalar_t__ SRPC_CLKSRC_MAX ; 
 int SRPC_CLKSRC_SEL_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int SRPC_GAINSEL_MASK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct fsl_spdif_priv *spdif_priv,
				enum spdif_gainsel gainsel, int dpll_locked)
{
	struct regmap *regmap = spdif_priv->regmap;
	u8 clksrc = spdif_priv->rxclk_src;

	if (clksrc >= SRPC_CLKSRC_MAX || gainsel >= GAINSEL_MULTI_MAX)
		return -EINVAL;

	FUNC2(regmap, REG_SPDIF_SRPC,
			SRPC_CLKSRC_SEL_MASK | SRPC_GAINSEL_MASK,
			FUNC0(clksrc) | FUNC1(gainsel));

	return 0;
}