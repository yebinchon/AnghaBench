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
struct TYPE_6__ {int /*<<< orphan*/  pcm_volume_level_right1; int /*<<< orphan*/  pcm_volume_level_left1; } ;
struct snd_gus_card {int /*<<< orphan*/  pcm_volume_level_lock; TYPE_3__ gf1; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct snd_gus_card* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_gus_card *gus = FUNC0(kcontrol);
	unsigned long flags;
	
	FUNC1(&gus->pcm_volume_level_lock, flags);
	ucontrol->value.integer.value[0] = gus->gf1.pcm_volume_level_left1;
	ucontrol->value.integer.value[1] = gus->gf1.pcm_volume_level_right1;
	FUNC2(&gus->pcm_volume_level_lock, flags);
	return 0;
}