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
struct snd_sb {int /*<<< orphan*/  mixer_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SB_DSP_CAPTURE_SOURCE ; 
 unsigned char SB_DSP_MIXS_CD ; 
 unsigned char SB_DSP_MIXS_LINE ; 
 unsigned char SB_DSP_MIXS_MIC ; 
 struct snd_sb* FUNC0 (struct snd_kcontrol*) ; 
 unsigned char FUNC1 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_sb *sb = FUNC0(kcontrol);
	unsigned long flags;
	int change;
	unsigned char nval, oval;
	
	if (ucontrol->value.enumerated.item[0] > 2)
		return -EINVAL;
	switch (ucontrol->value.enumerated.item[0]) {
	case 1:
		nval = SB_DSP_MIXS_CD;
		break;
	case 2:
		nval = SB_DSP_MIXS_LINE;
		break;
	default:
		nval = SB_DSP_MIXS_MIC;
	}
	nval <<= 1;
	FUNC3(&sb->mixer_lock, flags);
	oval = FUNC1(sb, SB_DSP_CAPTURE_SOURCE);
	nval |= oval & ~0x06;
	change = nval != oval;
	if (change)
		FUNC2(sb, SB_DSP_CAPTURE_SOURCE, nval);
	FUNC4(&sb->mixer_lock, flags);
	return change;
}