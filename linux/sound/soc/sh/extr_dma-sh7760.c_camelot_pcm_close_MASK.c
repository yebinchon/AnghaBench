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
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int txid; int /*<<< orphan*/ * tx_ss; int /*<<< orphan*/ * rx_ss; } ;
struct TYPE_2__ {size_t id; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 struct camelot_pcm* cam_pcm_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct camelot_pcm *cam = &cam_pcm_data[rtd->cpu_dai->id];
	int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;
	int dmairq;

	dmairq = (recv) ? cam->txid + 2 : cam->txid;

	if (recv)
		cam->rx_ss = NULL;
	else
		cam->tx_ss = NULL;

	FUNC0(dmairq + 1);
	FUNC0(dmairq);

	return 0;
}