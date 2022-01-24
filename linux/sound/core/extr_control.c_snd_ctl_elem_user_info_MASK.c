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
struct snd_ctl_elem_info {int /*<<< orphan*/  id; } ;
struct user_element {struct snd_ctl_elem_info info; } ;
struct snd_kcontrol {struct user_element* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct snd_kcontrol*,unsigned int) ; 
 unsigned int FUNC1 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_info *uinfo)
{
	struct user_element *ue = kcontrol->private_data;
	unsigned int offset;

	offset = FUNC1(kcontrol, &uinfo->id);
	*uinfo = ue->info;
	FUNC0(&uinfo->id, kcontrol, offset);

	return 0;
}