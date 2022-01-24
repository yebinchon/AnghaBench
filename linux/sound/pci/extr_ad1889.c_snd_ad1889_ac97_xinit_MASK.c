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
typedef  int u16 ;
struct snd_ad1889 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_AC97_ACIC ; 
 int AD_AC97_ACIC_ACIE ; 
 int AD_AC97_ACIC_ACRD ; 
 int AD_AC97_ACIC_ASOE ; 
 int AD_AC97_ACIC_VSRM ; 
 int FUNC0 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1889*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct snd_ad1889 *chip)
{
	u16 reg;

	reg = FUNC0(chip, AD_AC97_ACIC);
	reg |= AD_AC97_ACIC_ACRD;		/* Reset Disable */
	FUNC1(chip, AD_AC97_ACIC, reg);
	FUNC0(chip, AD_AC97_ACIC);	/* flush posted write */
	FUNC3(10);
	/* Interface Enable */
	reg |= AD_AC97_ACIC_ACIE;
	FUNC1(chip, AD_AC97_ACIC, reg);
	
	FUNC2(chip);

	/* Audio Stream Output | Variable Sample Rate Mode */
	reg = FUNC0(chip, AD_AC97_ACIC);
	reg |= AD_AC97_ACIC_ASOE | AD_AC97_ACIC_VSRM;
	FUNC1(chip, AD_AC97_ACIC, reg);
	FUNC0(chip, AD_AC97_ACIC); /* flush posted write */

}