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
typedef  int /*<<< orphan*/  u32 ;
struct sst_hsw {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {int /*<<< orphan*/  dev; struct sst_hsw* hsw; } ;

/* Variables and functions */
 int SST_HSW_CHANNELS_ALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hsw_priv_data* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_hsw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC5(kcontrol);
	struct hsw_priv_data *pdata = FUNC4(component);
	struct sst_hsw *hsw = pdata->hsw;
	u32 volume;

	FUNC1(pdata->dev);

	if (ucontrol->value.integer.value[0] ==
		ucontrol->value.integer.value[1]) {

		volume = FUNC0(ucontrol->value.integer.value[0]);
		FUNC6(hsw, 0, SST_HSW_CHANNELS_ALL, volume);

	} else {
		volume = FUNC0(ucontrol->value.integer.value[0]);
		FUNC6(hsw, 0, 0, volume);

		volume = FUNC0(ucontrol->value.integer.value[1]);
		FUNC6(hsw, 0, 1, volume);
	}

	FUNC2(pdata->dev);
	FUNC3(pdata->dev);
	return 0;
}