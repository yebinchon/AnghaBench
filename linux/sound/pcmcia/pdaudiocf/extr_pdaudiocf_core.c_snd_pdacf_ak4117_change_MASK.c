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
typedef  int /*<<< orphan*/  u16 ;
struct snd_pdacf {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * regmap; } ;
struct ak4117 {unsigned char rcs0; struct snd_pdacf* change_callback_private; } ;

/* Variables and functions */
 unsigned char AK4117_UNLCK ; 
 int /*<<< orphan*/  PDAUDIOCF_BLUE_LED_OFF ; 
 int PDAUDIOCF_REG_SCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pdacf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ak4117 *ak4117, unsigned char c0, unsigned char c1)
{
	struct snd_pdacf *chip = ak4117->change_callback_private;
	u16 val;

	if (!(c0 & AK4117_UNLCK))
		return;
	FUNC0(&chip->reg_lock);
	val = chip->regmap[PDAUDIOCF_REG_SCR>>1];
	if (ak4117->rcs0 & AK4117_UNLCK)
		val |= PDAUDIOCF_BLUE_LED_OFF;
	else
		val &= ~PDAUDIOCF_BLUE_LED_OFF;
	FUNC2(chip, PDAUDIOCF_REG_SCR, val);
	FUNC1(&chip->reg_lock);
}