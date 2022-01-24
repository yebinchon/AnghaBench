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
struct snd_soc_component {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT6351_AFE_PMIC_NEWIF_CFG2 ; 
 int /*<<< orphan*/  MT6351_AUDDEC_ANA_CON0 ; 
 int /*<<< orphan*/  MT6351_AUDDEC_ANA_CON3 ; 
 int /*<<< orphan*/  MT6351_AUDDEC_ANA_CON9 ; 
 int /*<<< orphan*/  MT6351_TOP_CKPDN_CON0_SET ; 
 int /*<<< orphan*/  MT6351_TOP_CLKSQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_component *cmpnt)
{
	/* Disable CLKSQ 26MHz */
	FUNC0(cmpnt->regmap, MT6351_TOP_CLKSQ, 0x0001, 0x0);
	/* disable AUDGLB */
	FUNC0(cmpnt->regmap, MT6351_AUDDEC_ANA_CON9,
			   0x1000, 0x1000);
	/* Turn off AUDNCP_CLKDIV engine clock,Turn off AUD 26M */
	FUNC0(cmpnt->regmap, MT6351_TOP_CKPDN_CON0_SET,
			   0x3800, 0x3800);
	/* Disable HeadphoneL/HeadphoneR/voice short circuit protection */
	FUNC0(cmpnt->regmap, MT6351_AUDDEC_ANA_CON0,
			   0xe000, 0xe000);
	/* [5] = 1, disable LO buffer left short circuit protection */
	FUNC0(cmpnt->regmap, MT6351_AUDDEC_ANA_CON3,
			   0x20, 0x20);
	/* Reverse the PMIC clock*/
	FUNC0(cmpnt->regmap, MT6351_AFE_PMIC_NEWIF_CFG2,
			   0x8000, 0x8000);
	return 0;
}