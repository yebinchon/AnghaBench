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
struct mt6358_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT6358_AUDDEC_ANA_CON4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct mt6358_priv *priv, bool enable)
{
	int i;

	if (enable) {
		for (i = 0x0; i <= 0x6; i++) {
			FUNC0(priv->regmap, MT6358_AUDDEC_ANA_CON4,
					   0x7, i);
			FUNC1(600, 700);
		}
	} else {
		for (i = 0x6; i >= 0x1; i--) {
			FUNC0(priv->regmap, MT6358_AUDDEC_ANA_CON4,
					   0x7, i);
			FUNC1(600, 700);
		}
	}
}