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
struct snd_kcontrol {size_t private_value; } ;
struct snd_dbri {struct dbri_streaminfo* stream_info; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct dbri_streaminfo {int /*<<< orphan*/  right_gain; int /*<<< orphan*/  left_gain; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_dbri* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_dbri *dbri = FUNC1(kcontrol);
	struct dbri_streaminfo *info;

	if (FUNC0(!dbri))
		return -EINVAL;
	info = &dbri->stream_info[kcontrol->private_value];

	ucontrol->value.integer.value[0] = info->left_gain;
	ucontrol->value.integer.value[1] = info->right_gain;
	return 0;
}