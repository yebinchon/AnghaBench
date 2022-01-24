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
struct snd_wm8776 {unsigned int switch_bits; } ;
struct snd_maya44 {struct snd_wm8776* wm; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_maya44* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC2(kcontrol);
	struct snd_wm8776 *wm =
		&chip->wm[FUNC1(kcontrol, &ucontrol->id)];
	unsigned int idx = FUNC0(kcontrol->private_value);

	ucontrol->value.integer.value[0] = (wm->switch_bits >> idx) & 1;
	return 0;
}