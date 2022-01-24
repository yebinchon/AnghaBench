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
struct snd_miro_aci {int /*<<< orphan*/  aci_mutex; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct snd_miro_aci*) ; 
 int FUNC1 (struct snd_miro_aci*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_miro_aci *aci, int write1, int write2, int write3)
{
	int write[] = {write1, write2, write3};
	int value, i;

	if (FUNC2(&aci->aci_mutex))
		return -EINTR;

	for (i=0; i<3; i++) {
		if (write[i]< 0 || write[i] > 255)
			break;
		else {
			value = FUNC1(aci, write[i]);
			if (value < 0)
				goto out;
		}
	}

	value = FUNC0(aci);

out:	FUNC3(&aci->aci_mutex);
	return value;
}