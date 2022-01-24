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
struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_i2s_priv {int dummy; } ;
struct mt8183_afe_private {struct mtk_afe_i2s_priv** dai_priv; } ;

/* Variables and functions */
 int FUNC0 (struct mtk_base_afe*,char const*) ; 

__attribute__((used)) static struct mtk_afe_i2s_priv *FUNC1(struct mtk_base_afe *afe,
						     const char *name)
{
	struct mt8183_afe_private *afe_priv = afe->platform_priv;
	int dai_id = FUNC0(afe, name);

	if (dai_id < 0)
		return NULL;

	return afe_priv->dai_priv[dai_id];
}