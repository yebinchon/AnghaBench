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
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm_chmap_elem {int dummy; } ;
struct snd_pcm {TYPE_1__* streams; int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_ca0106* private_data; } ;
struct snd_ca0106 {struct snd_pcm** pcm; int /*<<< orphan*/  pci; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 struct snd_pcm_chmap_elem* clfe_map ; 
 struct snd_pcm_chmap_elem* side_map ; 
 int /*<<< orphan*/  snd_ca0106_capture_0_ops ; 
 int /*<<< orphan*/  snd_ca0106_capture_1_ops ; 
 int /*<<< orphan*/  snd_ca0106_capture_2_ops ; 
 int /*<<< orphan*/  snd_ca0106_capture_3_ops ; 
 int /*<<< orphan*/  snd_ca0106_playback_center_lfe_ops ; 
 int /*<<< orphan*/  snd_ca0106_playback_front_ops ; 
 int /*<<< orphan*/  snd_ca0106_playback_rear_ops ; 
 int /*<<< orphan*/  snd_ca0106_playback_unknown_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm*,size_t,struct snd_pcm_chmap_elem const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,size_t,int /*<<< orphan*/ *) ; 
 struct snd_pcm_chmap_elem* snd_pcm_std_chmaps ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct snd_pcm_chmap_elem* surround_map ; 

__attribute__((used)) static int FUNC6(struct snd_ca0106 *emu, int device)
{
	struct snd_pcm *pcm;
	struct snd_pcm_substream *substream;
	const struct snd_pcm_chmap_elem *map = NULL;
	int err;
  
	err = FUNC3(emu->card, "ca0106", device, 1, 1, &pcm);
	if (err < 0)
		return err;
  
	pcm->private_data = emu;

	switch (device) {
	case 0:
	  FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_front_ops);
	  FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_0_ops);
	  map = snd_pcm_std_chmaps;
          break;
	case 1:
	  FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_rear_ops);
	  FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_1_ops);
	  map = surround_map;
          break;
	case 2:
	  FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_center_lfe_ops);
	  FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_2_ops);
	  map = clfe_map;
          break;
	case 3:
	  FUNC4(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_unknown_ops);
	  FUNC4(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_3_ops);
	  map = side_map;
          break;
        }

	pcm->info_flags = 0;
	FUNC5(pcm->name, "CA0106");

	for(substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream; 
	    substream; 
	    substream = substream->next) {
		FUNC2(substream, SNDRV_DMA_TYPE_DEV,
					      FUNC0(emu->pci),
					      64*1024, 64*1024);
	}

	for (substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream; 
	      substream; 
	      substream = substream->next) {
		FUNC2(substream, SNDRV_DMA_TYPE_DEV,
					      FUNC0(emu->pci),
					      64*1024, 64*1024);
	}
  
	err = FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK, map, 2,
				     1 << 2, NULL);
	if (err < 0)
		return err;

	emu->pcm[device] = pcm;
  
	return 0;
}