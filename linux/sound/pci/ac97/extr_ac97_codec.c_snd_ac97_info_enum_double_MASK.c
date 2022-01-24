#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct ac97_enum {scalar_t__ shift_l; scalar_t__ shift_r; int /*<<< orphan*/  texts; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int FUNC0 (struct snd_ctl_elem_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_info *uinfo)
{
	struct ac97_enum *e = (struct ac97_enum *)kcontrol->private_value;
	
	return FUNC0(uinfo, e->shift_l == e->shift_r ? 1 : 2,
				 e->mask, e->texts);
}