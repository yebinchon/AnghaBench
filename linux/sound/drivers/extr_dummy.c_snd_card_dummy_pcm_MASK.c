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
struct snd_pcm_ops {int dummy; } ;
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; struct snd_dummy* private_data; } ;
struct snd_dummy {struct snd_pcm* pcm; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 struct snd_pcm_ops dummy_pcm_ops ; 
 struct snd_pcm_ops dummy_pcm_ops_no_buf ; 
 scalar_t__ fake_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,struct snd_pcm_ops*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct snd_dummy *dummy, int device,
			      int substreams)
{
	struct snd_pcm *pcm;
	struct snd_pcm_ops *ops;
	int err;

	err = FUNC2(dummy->card, "Dummy PCM", device,
			       substreams, substreams, &pcm);
	if (err < 0)
		return err;
	dummy->pcm = pcm;
	if (fake_buffer)
		ops = &dummy_pcm_ops_no_buf;
	else
		ops = &dummy_pcm_ops;
	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, ops);
	pcm->private_data = dummy;
	pcm->info_flags = 0;
	FUNC4(pcm->name, "Dummy PCM");
	if (!fake_buffer) {
		FUNC1(pcm,
			SNDRV_DMA_TYPE_CONTINUOUS,
			FUNC0(GFP_KERNEL),
			0, 64*1024);
	}
	return 0;
}