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
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int gain; } ;
struct snd_harmony {TYPE_3__ st; int /*<<< orphan*/  mixer_lock; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int HARMONY_GAIN_IS_MASK ; 
 int HARMONY_GAIN_IS_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 struct snd_harmony* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC4(struct snd_kcontrol *kc, 
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_harmony *h = FUNC1(kc);
	int value;
	int old_gain = h->st.gain;
	
	FUNC2(&h->mixer_lock);

	value = ucontrol->value.enumerated.item[0] & 1;
	h->st.gain &= ~HARMONY_GAIN_IS_MASK;
 	h->st.gain |= value << HARMONY_GAIN_IS_SHIFT;

	FUNC0(h);

	FUNC3(&h->mixer_lock);
	
	return h->st.gain != old_gain;
}