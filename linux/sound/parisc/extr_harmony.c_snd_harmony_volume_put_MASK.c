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
struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int gain; } ;
struct snd_harmony {TYPE_3__ st; int /*<<< orphan*/  mixer_lock; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 struct snd_harmony* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC4(struct snd_kcontrol *kc, 
		       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_harmony *h = FUNC1(kc);
	int shift_left = (kc->private_value) & 0xff;
	int shift_right = (kc->private_value >> 8) & 0xff;
	int mask = (kc->private_value >> 16) & 0xff;
	int invert = (kc->private_value >> 24) & 0xff;
	int left, right;
	int old_gain = h->st.gain;
	
	FUNC2(&h->mixer_lock);

	left = ucontrol->value.integer.value[0] & mask;
	if (invert)
		left = mask - left;
	h->st.gain &= ~( (mask << shift_left ) );
 	h->st.gain |= (left << shift_left);

	if (shift_left != shift_right) {
		right = ucontrol->value.integer.value[1] & mask;
		if (invert)
			right = mask - right;
		h->st.gain &= ~( (mask << shift_right) );
		h->st.gain |= (right << shift_right);
	}

	FUNC0(h);

	FUNC3(&h->mixer_lock);
	
	return h->st.gain != old_gain;
}