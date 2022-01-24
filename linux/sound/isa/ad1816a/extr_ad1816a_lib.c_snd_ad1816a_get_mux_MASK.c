#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned short* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ad1816a {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_ADC_SOURCE_SEL ; 
 unsigned short FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ) ; 
 struct snd_ad1816a* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ad1816a *chip = FUNC1(kcontrol);
	unsigned long flags;
	unsigned short val;
	
	FUNC2(&chip->lock, flags);
	val = FUNC0(chip, AD1816A_ADC_SOURCE_SEL);
	FUNC3(&chip->lock, flags);
	ucontrol->value.enumerated.item[0] = (val >> 12) & 7;
	ucontrol->value.enumerated.item[1] = (val >> 4) & 7;
	return 0;
}