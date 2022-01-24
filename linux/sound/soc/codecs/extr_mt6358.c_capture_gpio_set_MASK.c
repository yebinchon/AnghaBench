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
 int /*<<< orphan*/  MT6358_GPIO_MODE3 ; 
 int /*<<< orphan*/  MT6358_GPIO_MODE3_CLR ; 
 int /*<<< orphan*/  MT6358_GPIO_MODE3_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct mt6358_priv *priv)
{
	/* set gpio miso mode */
	FUNC0(priv->regmap, MT6358_GPIO_MODE3_CLR,
			   0xffff, 0xffff);
	FUNC0(priv->regmap, MT6358_GPIO_MODE3_SET,
			   0xffff, 0x0249);
	FUNC0(priv->regmap, MT6358_GPIO_MODE3,
			   0xffff, 0x0249);
}