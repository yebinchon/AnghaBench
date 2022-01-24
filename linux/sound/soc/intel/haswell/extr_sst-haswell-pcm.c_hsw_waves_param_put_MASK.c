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
struct TYPE_3__ {int* data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {struct sst_hsw* hsw; } ;
typedef  enum sst_hsw_module_id { ____Placeholder_sst_hsw_module_id } sst_hsw_module_id ;

/* Variables and functions */
 int SST_HSW_MODULE_WAVES ; 
 int WAVES_PARAM_COUNT ; 
 struct hsw_priv_data* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC2 (struct sst_hsw*,int) ; 
 int FUNC3 (struct sst_hsw*,int,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_hsw*) ; 
 int FUNC5 (struct sst_hsw*,int*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct hsw_priv_data *pdata = FUNC0(component);
	struct sst_hsw *hsw = pdata->hsw;
	int ret;
	enum sst_hsw_module_id id = SST_HSW_MODULE_WAVES;
	int param_id = ucontrol->value.bytes.data[0];
	int param_size = WAVES_PARAM_COUNT;

	/* clear param buffer and reset buffer index */
	if (param_id == 0xFF) {
		FUNC4(hsw);
		return 0;
	}

	/* store params into buffer */
	ret = FUNC5(hsw, ucontrol->value.bytes.data);
	if (ret < 0)
		return ret;

	if (FUNC2(hsw, id))
		ret = FUNC3(hsw, id, 0, param_id,
				param_size, ucontrol->value.bytes.data);
	return ret;
}