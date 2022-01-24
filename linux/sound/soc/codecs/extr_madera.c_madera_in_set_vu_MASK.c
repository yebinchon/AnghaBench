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
struct madera_priv {int num_inputs; TYPE_1__* madera; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ MADERA_ADC_DIGITAL_VOLUME_1L ; 
 unsigned int MADERA_IN_VU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct madera_priv *priv, bool enable)
{
	unsigned int val;
	int i, ret;

	if (enable)
		val = MADERA_IN_VU;
	else
		val = 0;

	for (i = 0; i < priv->num_inputs; i++) {
		ret = FUNC1(priv->madera->regmap,
					 MADERA_ADC_DIGITAL_VOLUME_1L + (i * 4),
					 MADERA_IN_VU, val);
		if (ret)
			FUNC0(priv->madera->dev,
				 "Failed to modify VU bits: %d\n", ret);
	}
}