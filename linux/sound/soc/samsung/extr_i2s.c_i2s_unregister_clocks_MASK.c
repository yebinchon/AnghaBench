#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int clk_num; } ;
struct samsung_i2s_priv {int /*<<< orphan*/ * clk_table; TYPE_1__ clk_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct samsung_i2s_priv *priv)
{
	int i;

	for (i = 0; i < priv->clk_data.clk_num; i++) {
		if (!FUNC0(priv->clk_table[i]))
			FUNC1(priv->clk_table[i]);
	}
}