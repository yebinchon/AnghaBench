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
struct mtk_base_afe {struct mt6797_afe_private* platform_priv; } ;
struct mt6797_afe_private {int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 size_t CLK_INFRA_SYS_AUD ; 
 size_t CLK_INFRA_SYS_AUD_26M ; 
 size_t CLK_TOP_MUX_AUD ; 
 size_t CLK_TOP_MUX_AUD_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct mtk_base_afe *afe)
{
	struct mt6797_afe_private *afe_priv = afe->platform_priv;

	FUNC0(afe_priv->clk[CLK_TOP_MUX_AUD_BUS]);
	FUNC0(afe_priv->clk[CLK_TOP_MUX_AUD]);
	FUNC0(afe_priv->clk[CLK_INFRA_SYS_AUD_26M]);
	FUNC0(afe_priv->clk[CLK_INFRA_SYS_AUD]);

	return 0;
}