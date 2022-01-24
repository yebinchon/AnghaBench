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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int /*<<< orphan*/  page_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS1 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 struct snd_ac97* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ac97 *ac97 = FUNC4(kcontrol);
	int err;

	FUNC0(&ac97->page_mutex);
	FUNC3(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
	err = FUNC2(ac97, AC97_SIGMATEL_BIAS2, 0x0010,
				   (ucontrol->value.integer.value[0] & 1) << 4);
	FUNC3(ac97, AC97_SIGMATEL_BIAS1, 0);
	FUNC1(&ac97->page_mutex);
	return err;
}