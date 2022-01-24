#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {TYPE_3__* private_data; } ;
struct TYPE_7__ {int* value; } ;
struct TYPE_8__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_9__ {int /*<<< orphan*/  dline; int /*<<< orphan*/ * itd; int /*<<< orphan*/ * hrtf; } ;
typedef  TYPE_3__ a3dsrc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC4(struct snd_kcontrol *kcontrol,
		       struct snd_ctl_elem_value *ucontrol)
{
	a3dsrc_t *a = kcontrol->private_data;
	int coord[6];
	int i;
	for (i = 0; i < 6; i++)
		coord[i] = ucontrol->value.integer.value[i];
	/* Translate orientation coordinates to a3d params. */
	FUNC3(a->hrtf[0], coord);
	FUNC3(a->hrtf[1], coord);
	/* Inter aural time difference. */
	FUNC2(a, a->itd[0], a->itd[1]);
	FUNC0(a, a->itd[0], a->itd[1]);
	FUNC1(a, a->dline);
	return 1;
}