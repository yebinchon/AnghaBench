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
struct TYPE_5__ {scalar_t__* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct hdspm {TYPE_1__* tco; } ;
struct TYPE_4__ {scalar_t__ pull; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdspm*) ; 
 struct hdspm* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC1(kcontrol);

	if (hdspm->tco->pull != ucontrol->value.enumerated.item[0]) {
		hdspm->tco->pull = ucontrol->value.enumerated.item[0];

		FUNC0(hdspm);

		return 1;
	}

	return 0;
}