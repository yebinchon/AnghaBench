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
typedef  int u32 ;
struct snd_rme9652 {unsigned int ss_channels; int thru_bits; int /*<<< orphan*/  lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*,unsigned int,int) ; 
 struct snd_rme9652* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_rme9652 *rme9652 = FUNC1(kcontrol);
	int change;
	unsigned int chn;
	u32 thru_bits = 0;

	if (!FUNC2(rme9652))
		return -EBUSY;

	for (chn = 0; chn < rme9652->ss_channels; ++chn) {
		if (ucontrol->value.integer.value[chn])
			thru_bits |= 1 << chn;
	}
	
	FUNC3(&rme9652->lock);
	change = thru_bits ^ rme9652->thru_bits;
	if (change) {
		for (chn = 0; chn < rme9652->ss_channels; ++chn) {
			if (!(change & (1 << chn)))
				continue;
			FUNC0(rme9652,chn,thru_bits&(1<<chn));
		}
	}
	FUNC4(&rme9652->lock);
	return !!change;
}