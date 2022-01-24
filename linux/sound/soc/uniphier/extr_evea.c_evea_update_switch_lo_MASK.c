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
struct evea_priv {scalar_t__ switch_lo; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ADACSEQ1_MMUTE ; 
 int /*<<< orphan*/  ALO1OUTPOW ; 
 int ALO1OUTPOW_LO1_ON ; 
 int /*<<< orphan*/  ALO2OUTPOW ; 
 int ALO2OUTPOW_ADAC2_MUTE ; 
 int ALO2OUTPOW_LO2_ON ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct evea_priv *evea)
{
	struct regmap *map = evea->regmap;

	if (evea->switch_lo) {
		FUNC1(map, FUNC0(0), ADACSEQ1_MMUTE, 0);
		FUNC1(map, FUNC0(2), ADACSEQ1_MMUTE, 0);

		FUNC1(map, ALO1OUTPOW, ALO1OUTPOW_LO1_ON,
				   ALO1OUTPOW_LO1_ON);
		FUNC1(map, ALO2OUTPOW,
				   ALO2OUTPOW_ADAC2_MUTE | ALO2OUTPOW_LO2_ON,
				   ALO2OUTPOW_ADAC2_MUTE | ALO2OUTPOW_LO2_ON);
	} else {
		FUNC1(map, FUNC0(0), ADACSEQ1_MMUTE,
				   ADACSEQ1_MMUTE);
		FUNC1(map, FUNC0(2), ADACSEQ1_MMUTE,
				   ADACSEQ1_MMUTE);

		FUNC1(map, ALO1OUTPOW, ALO1OUTPOW_LO1_ON, 0);
		FUNC1(map, ALO2OUTPOW,
				   ALO2OUTPOW_ADAC2_MUTE | ALO2OUTPOW_LO2_ON,
				   0);
	}

	return 0;
}