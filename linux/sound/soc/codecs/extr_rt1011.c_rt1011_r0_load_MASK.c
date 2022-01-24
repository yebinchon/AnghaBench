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
struct rt1011_priv {int r0_reg; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT1011_INIT_RECIPROCAL_REG_15_0 ; 
 int /*<<< orphan*/  RT1011_INIT_RECIPROCAL_REG_24_16 ; 
 int /*<<< orphan*/  RT1011_SPK_TEMP_PROTECT_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct rt1011_priv *rt1011)
{
	if (!rt1011->r0_reg)
		return -EINVAL;

	/* write R0 to register */
	FUNC0(rt1011->regmap, RT1011_INIT_RECIPROCAL_REG_24_16,
		((rt1011->r0_reg>>16) & 0x1ff));
	FUNC0(rt1011->regmap, RT1011_INIT_RECIPROCAL_REG_15_0,
		(rt1011->r0_reg & 0xffff));
	FUNC0(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_4, 0x4080);

	return 0;
}