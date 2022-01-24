#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sst_data {int /*<<< orphan*/  byte_stream; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  card; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ramp_duration; void* r_gain; void* l_gain; int /*<<< orphan*/  mute; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SST_GAIN_MUTE_DEFAULT ; 
 int /*<<< orphan*/  SST_GAIN_RAMP_DURATION_DEFAULT ; 
 void* SST_GAIN_VOLUME_DEFAULT ; 
 int /*<<< orphan*/  SST_MAX_BIN_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intercon ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct sst_data* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sst_algo_controls ; 
 int /*<<< orphan*/  sst_dapm_widgets ; 
 int /*<<< orphan*/  sst_gain_controls ; 
 TYPE_1__* sst_gains ; 
 int FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  sst_slot_controls ; 

int FUNC10(struct snd_soc_component *component)
{
	int i, ret = 0;
	struct snd_soc_dapm_context *dapm =
			FUNC3(component);
	struct sst_data *drv = FUNC4(component);
	unsigned int gains = FUNC0(sst_gain_controls)/3;

	drv->byte_stream = FUNC1(component->dev,
					SST_MAX_BIN_BYTES, GFP_KERNEL);
	if (!drv->byte_stream)
		return -ENOMEM;

	FUNC6(dapm, sst_dapm_widgets,
			FUNC0(sst_dapm_widgets));
	FUNC5(dapm, intercon,
			FUNC0(intercon));
	FUNC7(dapm->card);

	for (i = 0; i < gains; i++) {
		sst_gains[i].mute = SST_GAIN_MUTE_DEFAULT;
		sst_gains[i].l_gain = SST_GAIN_VOLUME_DEFAULT;
		sst_gains[i].r_gain = SST_GAIN_VOLUME_DEFAULT;
		sst_gains[i].ramp_duration = SST_GAIN_RAMP_DURATION_DEFAULT;
	}

	ret = FUNC2(component, sst_gain_controls,
			FUNC0(sst_gain_controls));
	if (ret)
		return ret;

	/* Initialize algo control params */
	ret = FUNC8(component->dev);
	if (ret)
		return ret;
	ret = FUNC2(component, sst_algo_controls,
			FUNC0(sst_algo_controls));
	if (ret)
		return ret;

	ret = FUNC2(component, sst_slot_controls,
			FUNC0(sst_slot_controls));
	if (ret)
		return ret;

	ret = FUNC9(component);

	return ret;
}