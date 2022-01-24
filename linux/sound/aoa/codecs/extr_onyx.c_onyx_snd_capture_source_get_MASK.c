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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct onyx {int /*<<< orphan*/  mutex; } ;
typedef  int s8 ;

/* Variables and functions */
 int ONYX_ADC_INPUT_MIC ; 
 int /*<<< orphan*/  ONYX_REG_ADC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct onyx*,int /*<<< orphan*/ ,int*) ; 
 struct onyx* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct onyx *onyx = FUNC3(kcontrol);
	s8 v;

	FUNC0(&onyx->mutex);
	FUNC2(onyx, ONYX_REG_ADC_CONTROL, &v);
	FUNC1(&onyx->mutex);

	ucontrol->value.enumerated.item[0] = !!(v&ONYX_ADC_INPUT_MIC);

	return 0;
}