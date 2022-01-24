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
struct TYPE_3__ {unsigned int item; int /*<<< orphan*/  name; scalar_t__ items; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int /*<<< orphan*/  id; } ;
struct user_element {char* priv_data; struct snd_ctl_elem_info info; } ;
struct snd_kcontrol {struct user_element* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_kcontrol*,unsigned int) ; 
 unsigned int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_info *uinfo)
{
	struct user_element *ue = kcontrol->private_data;
	const char *names;
	unsigned int item;
	unsigned int offset;

	item = uinfo->value.enumerated.item;

	offset = FUNC2(kcontrol, &uinfo->id);
	*uinfo = ue->info;
	FUNC1(&uinfo->id, kcontrol, offset);

	item = FUNC0(item, uinfo->value.enumerated.items - 1);
	uinfo->value.enumerated.item = item;

	names = ue->priv_data;
	for (; item > 0; --item)
		names += FUNC4(names) + 1;
	FUNC3(uinfo->value.enumerated.name, names);

	return 0;
}