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
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aw2 {int /*<<< orphan*/  saa7146; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ROUTE_ANALOG ; 
 int /*<<< orphan*/  CTL_ROUTE_DIGITAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct aw2* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_value
					      *ucontrol)
{
	struct aw2 *chip = FUNC1(kcontrol);
	if (FUNC0(&chip->saa7146))
		ucontrol->value.enumerated.item[0] = CTL_ROUTE_DIGITAL;
	else
		ucontrol->value.enumerated.item[0] = CTL_ROUTE_ANALOG;
	return 0;
}