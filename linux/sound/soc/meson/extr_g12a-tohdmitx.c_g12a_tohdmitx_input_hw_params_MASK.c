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
struct snd_soc_dai {TYPE_3__* driver; struct g12a_tohdmitx_input* playback_dma_data; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int formats; int /*<<< orphan*/  sig_bits; void* channels_max; void* channels_min; void* rate_max; void* rate_min; int /*<<< orphan*/  rates; } ;
struct g12a_tohdmitx_input {TYPE_1__ params; } ;
struct TYPE_5__ {int /*<<< orphan*/  sig_bits; } ;
struct TYPE_6__ {TYPE_2__ playback; } ;

/* Variables and functions */
 void* FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 void* FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
					 struct snd_pcm_hw_params *params,
					 struct snd_soc_dai *dai)
{
	struct g12a_tohdmitx_input *data = dai->playback_dma_data;

	data->params.rates = FUNC3(FUNC2(params));
	data->params.rate_min = FUNC2(params);
	data->params.rate_max = FUNC2(params);
	data->params.formats = 1 << FUNC1(params);
	data->params.channels_min = FUNC0(params);
	data->params.channels_max = FUNC0(params);
	data->params.sig_bits = dai->driver->playback.sig_bits;

	return 0;
}