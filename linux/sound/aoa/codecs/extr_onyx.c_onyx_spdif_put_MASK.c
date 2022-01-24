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
typedef  int u8 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONYX_REG_DIG_INFO1 ; 
 int /*<<< orphan*/  ONYX_REG_DIG_INFO2 ; 
 int /*<<< orphan*/  ONYX_REG_DIG_INFO3 ; 
 int /*<<< orphan*/  ONYX_REG_DIG_INFO4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct onyx*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct onyx*,int /*<<< orphan*/ ,int) ; 
 struct onyx* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	struct onyx *onyx = FUNC4(kcontrol);
	u8 v;

	FUNC0(&onyx->mutex);
	FUNC2(onyx, ONYX_REG_DIG_INFO1, &v);
	v = (v & ~0x3e) | (ucontrol->value.iec958.status[0] & 0x3e);
	FUNC3(onyx, ONYX_REG_DIG_INFO1, v);

	v = ucontrol->value.iec958.status[1];
	FUNC3(onyx, ONYX_REG_DIG_INFO2, v);

	FUNC2(onyx, ONYX_REG_DIG_INFO3, &v);
	v = (v & ~0x3f) | (ucontrol->value.iec958.status[3] & 0x3f);
	FUNC3(onyx, ONYX_REG_DIG_INFO3, v);

	FUNC2(onyx, ONYX_REG_DIG_INFO4, &v);
	v = (v & ~0x0f) | (ucontrol->value.iec958.status[4] & 0x0f);
	FUNC3(onyx, ONYX_REG_DIG_INFO4, v);
	FUNC1(&onyx->mutex);

	return 1;
}