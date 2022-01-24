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
struct evea_priv {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AANAPOW ; 
 int /*<<< orphan*/  AANAPOW_A_POWD ; 
 int /*<<< orphan*/  ADAC1ODC ; 
 int /*<<< orphan*/  ADAC1ODC_ADAC_RAMPCLT_MASK ; 
 int /*<<< orphan*/  ADAC1ODC_ADAC_RAMPCLT_REDUCE ; 
 int /*<<< orphan*/  ADAC1ODC_HP_DIS_RES_MASK ; 
 int /*<<< orphan*/  ADAC1ODC_HP_DIS_RES_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADACSEQ2_ADACIN_FIX ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct evea_priv *evea)
{
	struct regmap *map = evea->regmap;

	FUNC1(map, AANAPOW, AANAPOW_A_POWD,
			   AANAPOW_A_POWD);

	FUNC1(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
			   ADAC1ODC_HP_DIS_RES_ON);

	FUNC1(map, ADAC1ODC, ADAC1ODC_ADAC_RAMPCLT_MASK,
			   ADAC1ODC_ADAC_RAMPCLT_REDUCE);

	FUNC1(map, FUNC0(0), ADACSEQ2_ADACIN_FIX, 0);
	FUNC1(map, FUNC0(1), ADACSEQ2_ADACIN_FIX, 0);
	FUNC1(map, FUNC0(2), ADACSEQ2_ADACIN_FIX, 0);
}