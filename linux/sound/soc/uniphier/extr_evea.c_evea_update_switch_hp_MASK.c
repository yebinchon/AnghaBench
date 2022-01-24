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
struct evea_priv {scalar_t__ switch_hp; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAC1ODC ; 
 int /*<<< orphan*/  ADAC1ODC_HP_DIS_RES_MASK ; 
 int /*<<< orphan*/  ADAC1ODC_HP_DIS_RES_OFF ; 
 int /*<<< orphan*/  ADAC1ODC_HP_DIS_RES_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADACSEQ1_MMUTE ; 
 int /*<<< orphan*/  AHPOUTPOW ; 
 int /*<<< orphan*/  AHPOUTPOW_HP_ON ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct evea_priv *evea)
{
	struct regmap *map = evea->regmap;

	if (evea->switch_hp) {
		FUNC1(map, FUNC0(1), ADACSEQ1_MMUTE, 0);

		FUNC1(map, AHPOUTPOW, AHPOUTPOW_HP_ON,
				   AHPOUTPOW_HP_ON);

		FUNC1(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
				   ADAC1ODC_HP_DIS_RES_OFF);
	} else {
		FUNC1(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
				   ADAC1ODC_HP_DIS_RES_ON);

		FUNC1(map, FUNC0(1), ADACSEQ1_MMUTE,
				   ADACSEQ1_MMUTE);

		FUNC1(map, AHPOUTPOW, AHPOUTPOW_HP_ON, 0);
	}

	return 0;
}