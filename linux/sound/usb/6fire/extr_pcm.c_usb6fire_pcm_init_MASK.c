#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm {int /*<<< orphan*/  name; struct pcm_runtime* private_data; } ;
struct sfire_chip {struct pcm_runtime* pcm; TYPE_3__* dev; int /*<<< orphan*/  card; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct pcm_runtime {struct snd_pcm* instance; TYPE_4__* in_urbs; TYPE_4__* out_urbs; TYPE_2__ capture; TYPE_1__ playback; int /*<<< orphan*/  stream_mutex; int /*<<< orphan*/  stream_wait_queue; int /*<<< orphan*/  rate; int /*<<< orphan*/  stream_state; struct sfire_chip* chip; } ;
struct TYPE_8__ {struct TYPE_8__* peer; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IN_EP ; 
 int /*<<< orphan*/  OUT_EP ; 
 int PCM_N_URBS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  STREAM_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_runtime*) ; 
 struct pcm_runtime* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcm_ops ; 
 int /*<<< orphan*/  rates ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pcm_runtime*) ; 
 int FUNC11 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  usb6fire_pcm_in_urb_handler ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct sfire_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb6fire_pcm_out_urb_handler ; 

int FUNC13(struct sfire_chip *chip)
{
	int i;
	int ret;
	struct snd_pcm *pcm;
	struct pcm_runtime *rt =
			FUNC4(sizeof(struct pcm_runtime), GFP_KERNEL);

	if (!rt)
		return -ENOMEM;

	ret = FUNC11(rt);
	if (ret) {
		FUNC10(rt);
		FUNC3(rt);
		return ret;
	}

	rt->chip = chip;
	rt->stream_state = STREAM_DISABLED;
	rt->rate = FUNC0(rates);
	FUNC2(&rt->stream_wait_queue);
	FUNC5(&rt->stream_mutex);

	FUNC8(&rt->playback.lock);
	FUNC8(&rt->capture.lock);

	for (i = 0; i < PCM_N_URBS; i++) {
		FUNC12(&rt->in_urbs[i], chip, true, IN_EP,
				usb6fire_pcm_in_urb_handler);
		FUNC12(&rt->out_urbs[i], chip, false, OUT_EP,
				usb6fire_pcm_out_urb_handler);

		rt->in_urbs[i].peer = &rt->out_urbs[i];
		rt->out_urbs[i].peer = &rt->in_urbs[i];
	}

	ret = FUNC6(chip->card, "DMX6FireUSB", 0, 1, 1, &pcm);
	if (ret < 0) {
		FUNC10(rt);
		FUNC3(rt);
		FUNC1(&chip->dev->dev, "cannot create pcm instance.\n");
		return ret;
	}

	pcm->private_data = rt;
	FUNC9(pcm->name, "DMX 6Fire USB");
	FUNC7(pcm, SNDRV_PCM_STREAM_PLAYBACK, &pcm_ops);
	FUNC7(pcm, SNDRV_PCM_STREAM_CAPTURE, &pcm_ops);

	if (ret) {
		FUNC10(rt);
		FUNC3(rt);
		FUNC1(&chip->dev->dev,
			"error preallocating pcm buffers.\n");
		return ret;
	}
	rt->instance = pcm;

	chip->pcm = rt;
	return 0;
}