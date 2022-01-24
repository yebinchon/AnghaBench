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
struct usb_line6 {int /*<<< orphan*/  card; int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  usbdev; struct snd_line6_pcm* line6pcm; TYPE_1__* properties; } ;
struct snd_pcm {int /*<<< orphan*/  private_free; struct snd_line6_pcm* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct snd_line6_pcm {int* volume_playback; int volume_monitor; struct usb_line6* line6; void* max_packet_size_out; void* max_packet_size_in; int /*<<< orphan*/  impulse_period; TYPE_3__ in; TYPE_2__ out; struct line6_pcm_properties* properties; struct snd_pcm* pcm; int /*<<< orphan*/  state_mutex; } ;
struct line6_pcm_properties {int dummy; } ;
struct TYPE_4__ {unsigned int ep_audio_r; unsigned int ep_audio_w; int capabilities; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LINE6_CAP_PCM ; 
 int /*<<< orphan*/  LINE6_IMPULSE_DEFAULT_PERIOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct snd_line6_pcm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line6_cleanup_pcm ; 
 int /*<<< orphan*/ * line6_controls ; 
 int FUNC3 (struct snd_line6_pcm*) ; 
 int FUNC4 (struct snd_line6_pcm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct snd_line6_pcm*) ; 
 int FUNC8 (struct usb_line6*,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC13(struct usb_line6 *line6,
		   struct line6_pcm_properties *properties)
{
	int i, err;
	unsigned ep_read = line6->properties->ep_audio_r;
	unsigned ep_write = line6->properties->ep_audio_w;
	struct snd_pcm *pcm;
	struct snd_line6_pcm *line6pcm;

	if (!(line6->properties->capabilities & LINE6_CAP_PCM))
		return 0;	/* skip PCM initialization and report success */

	err = FUNC8(line6, &pcm);
	if (err < 0)
		return err;

	line6pcm = FUNC2(sizeof(*line6pcm), GFP_KERNEL);
	if (!line6pcm)
		return -ENOMEM;

	FUNC5(&line6pcm->state_mutex);
	line6pcm->pcm = pcm;
	line6pcm->properties = properties;
	line6pcm->volume_playback[0] = line6pcm->volume_playback[1] = 255;
	line6pcm->volume_monitor = 255;
	line6pcm->line6 = line6;

	FUNC9(&line6pcm->out.lock);
	FUNC9(&line6pcm->in.lock);
	line6pcm->impulse_period = LINE6_IMPULSE_DEFAULT_PERIOD;

	line6->line6pcm = line6pcm;

	pcm->private_data = line6pcm;
	pcm->private_free = line6_cleanup_pcm;

	line6pcm->max_packet_size_in =
		FUNC10(line6->usbdev,
			FUNC11(line6->usbdev, ep_read), 0);
	line6pcm->max_packet_size_out =
		FUNC10(line6->usbdev,
			FUNC12(line6->usbdev, ep_write), 1);
	if (!line6pcm->max_packet_size_in || !line6pcm->max_packet_size_out) {
		FUNC1(line6pcm->line6->ifcdev,
			"cannot get proper max packet size\n");
		return -EINVAL;
	}

	err = FUNC4(line6pcm);
	if (err < 0)
		return err;

	err = FUNC3(line6pcm);
	if (err < 0)
		return err;

	/* mixer: */
	for (i = 0; i < FUNC0(line6_controls); i++) {
		err = FUNC6(line6->card,
				  FUNC7(&line6_controls[i], line6pcm));
		if (err < 0)
			return err;
	}

	return 0;
}