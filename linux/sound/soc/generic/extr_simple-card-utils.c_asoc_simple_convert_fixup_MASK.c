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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ max; scalar_t__ min; } ;
struct asoc_simple_data {scalar_t__ convert_channels; scalar_t__ convert_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 

void FUNC1(struct asoc_simple_data *data,
			       struct snd_pcm_hw_params *params)
{
	struct snd_interval *rate = FUNC0(params,
						SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval *channels = FUNC0(params,
						SNDRV_PCM_HW_PARAM_CHANNELS);

	if (data->convert_rate)
		rate->min =
		rate->max = data->convert_rate;

	if (data->convert_channels)
		channels->min =
		channels->max = data->convert_channels;
}