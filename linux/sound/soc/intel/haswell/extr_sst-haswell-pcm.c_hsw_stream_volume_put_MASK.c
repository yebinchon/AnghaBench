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
typedef  void* u32 ;
struct sst_hsw {int dummy; } ;
struct soc_mixer_control {size_t reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {int /*<<< orphan*/  dev; struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  stream; void** volume; } ;
struct TYPE_6__ {int dai_id; int stream; } ;

/* Variables and functions */
 int SST_HSW_CHANNELS_ALL ; 
 void* FUNC0 (scalar_t__) ; 
 TYPE_3__* mod_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct hsw_priv_data* FUNC6 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC7 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_hsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static int FUNC9(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC7(kcontrol);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	struct hsw_priv_data *pdata =
		FUNC6(component);
	struct hsw_pcm_data *pcm_data;
	struct sst_hsw *hsw = pdata->hsw;
	u32 volume;
	int dai, stream;

	dai = mod_map[mc->reg].dai_id;
	stream = mod_map[mc->reg].stream;
	pcm_data = &pdata->pcm[dai][stream];

	FUNC1(&pcm_data->mutex);
	FUNC3(pdata->dev);

	if (!pcm_data->stream) {
		pcm_data->volume[0] =
			FUNC0(ucontrol->value.integer.value[0]);
		pcm_data->volume[1] =
			FUNC0(ucontrol->value.integer.value[1]);
		FUNC4(pdata->dev);
		FUNC5(pdata->dev);
		FUNC2(&pcm_data->mutex);
		return 0;
	}

	if (ucontrol->value.integer.value[0] ==
		ucontrol->value.integer.value[1]) {
		volume = FUNC0(ucontrol->value.integer.value[0]);
		/* apply volume value to all channels */
		FUNC8(hsw, pcm_data->stream, 0, SST_HSW_CHANNELS_ALL, volume);
	} else {
		volume = FUNC0(ucontrol->value.integer.value[0]);
		FUNC8(hsw, pcm_data->stream, 0, 0, volume);
		volume = FUNC0(ucontrol->value.integer.value[1]);
		FUNC8(hsw, pcm_data->stream, 0, 1, volume);
	}

	FUNC4(pdata->dev);
	FUNC5(pdata->dev);
	FUNC2(&pcm_data->mutex);
	return 0;
}