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
struct madera_priv {struct madera* madera; } ;
struct madera {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADERA_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct madera_priv *priv)
{
	struct madera *madera = priv->madera;
	unsigned int val;
	int ret, i;

	/* Skip this if the chip is down */
	if (FUNC1(madera->dev))
		return;

	/*
	 * Just read a register a few times to ensure the internal
	 * oscillator sends out a few clocks.
	 */
	for (i = 0; i < 4; i++) {
		ret = FUNC2(madera->regmap, MADERA_SOFTWARE_RESET, &val);
		if (ret)
			FUNC0(madera->dev,
				"Failed to read sysclk spin %d: %d\n", i, ret);
	}

	FUNC3(300);
}