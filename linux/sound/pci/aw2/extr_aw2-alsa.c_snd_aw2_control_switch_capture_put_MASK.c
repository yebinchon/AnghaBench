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
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct aw2 {int /*<<< orphan*/  saa7146; } ;

/* Variables and functions */
 scalar_t__ CTL_ROUTE_ANALOG ; 
 scalar_t__ CTL_ROUTE_DIGITAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct aw2* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_value
					      *ucontrol)
{
	struct aw2 *chip = FUNC2(kcontrol);
	int changed = 0;
	int is_disgital =
	    FUNC0(&chip->saa7146);

	if (((ucontrol->value.integer.value[0] == CTL_ROUTE_DIGITAL)
	     && !is_disgital)
	    || ((ucontrol->value.integer.value[0] == CTL_ROUTE_ANALOG)
		&& is_disgital)) {
		FUNC1(&chip->saa7146, !is_disgital);
		changed = 1;
	}
	return changed;
}