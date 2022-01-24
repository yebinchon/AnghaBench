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
struct sst_hsw {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {int /*<<< orphan*/  dev; struct sst_hsw* hsw; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hsw_priv_data* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_hsw*,int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC5(kcontrol);
	struct hsw_priv_data *pdata = FUNC4(component);
	struct sst_hsw *hsw = pdata->hsw;
	unsigned int volume = 0;

	FUNC1(pdata->dev);
	FUNC6(hsw, 0, 0, &volume);
	ucontrol->value.integer.value[0] = FUNC0(volume);

	FUNC6(hsw, 0, 1, &volume);
	ucontrol->value.integer.value[1] = FUNC0(volume);

	FUNC2(pdata->dev);
	FUNC3(pdata->dev);
	return 0;
}