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
struct regmap {int dummy; } ;
struct evea_priv {scalar_t__ switch_lin; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AADCPOW_AADC_POWD ; 
 int /*<<< orphan*/  ALINEPOW ; 
 int ALINEPOW_LIN1_POWD ; 
 int ALINEPOW_LIN2_POWD ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct evea_priv *evea)
{
	struct regmap *map = evea->regmap;

	if (evea->switch_lin) {
		FUNC1(map, ALINEPOW,
				   ALINEPOW_LIN2_POWD | ALINEPOW_LIN1_POWD,
				   ALINEPOW_LIN2_POWD | ALINEPOW_LIN1_POWD);

		FUNC1(map, FUNC0(0), AADCPOW_AADC_POWD,
				   AADCPOW_AADC_POWD);
		FUNC1(map, FUNC0(1), AADCPOW_AADC_POWD,
				   AADCPOW_AADC_POWD);
	} else {
		FUNC1(map, FUNC0(0), AADCPOW_AADC_POWD, 0);
		FUNC1(map, FUNC0(1), AADCPOW_AADC_POWD, 0);

		FUNC1(map, ALINEPOW,
				   ALINEPOW_LIN2_POWD | ALINEPOW_LIN1_POWD, 0);
	}

	return 0;
}