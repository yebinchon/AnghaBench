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
struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct session_data {int path_type; int bits_per_sample; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; } ;
struct msm_routing_data {int /*<<< orphan*/  lock; struct session_data* port_data; } ;
struct TYPE_2__ {unsigned int id; } ;

/* Variables and functions */
 int ADM_PATH_LIVE_REC ; 
 int ADM_PATH_PLAYBACK ; 
 unsigned int AFE_MAX_PORTS ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 129 
#define  SNDRV_PCM_FORMAT_S24_LE 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct msm_routing_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 struct snd_soc_component* FUNC6 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *c = FUNC6(rtd, DRV_NAME);
	struct msm_routing_data *data = FUNC0(c->dev);
	unsigned int be_id = rtd->cpu_dai->id;
	struct session_data *session;
	int path_type;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		path_type = ADM_PATH_PLAYBACK;
	else
		path_type = ADM_PATH_LIVE_REC;

	if (be_id >= AFE_MAX_PORTS)
		return -EINVAL;

	session = &data->port_data[be_id];

	FUNC1(&data->lock);

	session->path_type = path_type;
	session->sample_rate = FUNC5(params);
	session->channels = FUNC3(params);

	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
			session->bits_per_sample = 16;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
			session->bits_per_sample = 24;
		break;
	default:
		break;
	}

	FUNC2(&data->lock);
	return 0;
}