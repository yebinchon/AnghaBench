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
struct snd_trident {scalar_t__ device; int /*<<< orphan*/  pci; struct snd_pcm* spdif; int /*<<< orphan*/  card; } ;
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_trident* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_trident_spdif_7018_ops ; 
 int /*<<< orphan*/  snd_trident_spdif_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct snd_trident *trident, int device)
{
	struct snd_pcm *spdif;
	int err;

	if ((err = FUNC2(trident->card, "trident_dx_nx IEC958", device, 1, 0, &spdif)) < 0)
		return err;

	spdif->private_data = trident;
	if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
		FUNC3(spdif, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_spdif_ops);
	} else {
		FUNC3(spdif, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_spdif_7018_ops);
	}
	spdif->info_flags = 0;
	FUNC4(spdif->name, "Trident 4DWave IEC958");
	trident->spdif = spdif;

	FUNC1(spdif, SNDRV_DMA_TYPE_DEV, FUNC0(trident->pci), 64*1024, 128*1024);

	return 0;
}