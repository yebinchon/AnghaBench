#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct via82xx {int port; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_6__ {scalar_t__ index; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int VIA_REG_CAPTURE_CHANNEL ; 
 int VIA_REG_CAPTURE_CHANNEL_MIC ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 struct via82xx* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
					  struct snd_ctl_elem_value *ucontrol)
{
	struct via82xx *chip = FUNC2(kcontrol);
	unsigned long port = chip->port + (kcontrol->id.index ? (VIA_REG_CAPTURE_CHANNEL + 0x10) : VIA_REG_CAPTURE_CHANNEL);
	u8 val, oval;

	FUNC3(&chip->reg_lock);
	oval = FUNC0(port);
	val = oval & ~VIA_REG_CAPTURE_CHANNEL_MIC;
	if (ucontrol->value.enumerated.item[0])
		val |= VIA_REG_CAPTURE_CHANNEL_MIC;
	if (val != oval)
		FUNC1(val, port);
	FUNC4(&chip->reg_lock);
	return val != oval;
}