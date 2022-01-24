#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct snd_akm4xxx {TYPE_1__* adc_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  input_names; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned int FUNC1 (struct snd_akm4xxx*,int) ; 
 int FUNC2 (struct snd_ctl_elem_info*,int,unsigned int,int /*<<< orphan*/ ) ; 
 struct snd_akm4xxx* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_info *uinfo)
{
	struct snd_akm4xxx *ak = FUNC3(kcontrol);
	int mixer_ch = FUNC0(kcontrol->private_value);
	unsigned int num_names;

	num_names = FUNC1(ak, mixer_ch);
	if (!num_names)
		return -EINVAL;
	return FUNC2(uinfo, 1, num_names,
				 ak->adc_info[mixer_ch].input_names);
}