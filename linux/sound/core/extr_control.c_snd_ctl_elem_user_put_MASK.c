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
struct user_element {unsigned int elem_data_size; char* elem_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;
struct snd_ctl_elem_value {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	int change;
	struct user_element *ue = kcontrol->private_data;
	unsigned int size = ue->elem_data_size;
	char *dst = ue->elem_data +
			FUNC2(kcontrol, &ucontrol->id) * size;

	change = FUNC0(&ucontrol->value, dst, size) != 0;
	if (change)
		FUNC1(dst, &ucontrol->value, size);
	return change;
}