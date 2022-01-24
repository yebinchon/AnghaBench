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
struct snd_usb_substream {int need_setup_ep; TYPE_3__* stream; int /*<<< orphan*/  altset_idx; int /*<<< orphan*/  interface; int /*<<< orphan*/  channels; int /*<<< orphan*/  cur_rate; int /*<<< orphan*/  pcm_format; TYPE_2__* dev; int /*<<< orphan*/  buffer_periods; int /*<<< orphan*/  period_frames; int /*<<< orphan*/  period_bytes; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct audioformat {int /*<<< orphan*/  altset_idx; int /*<<< orphan*/  iface; } ;
struct TYPE_6__ {int /*<<< orphan*/  chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct snd_usb_substream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UAC3_PD_STATE_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct audioformat* FUNC1 (struct snd_usb_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int FUNC9 (struct snd_usb_substream*,struct audioformat*) ; 
 int FUNC10 (struct snd_usb_substream*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_usb_substream*) ; 
 int FUNC12 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct snd_usb_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ snd_usb_use_vmalloc ; 

__attribute__((used)) static int FUNC17(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *hw_params)
{
	struct snd_usb_substream *subs = substream->runtime->private_data;
	struct audioformat *fmt;
	int ret;

	ret = FUNC10(subs);
	if (ret)
		return ret;

	if (snd_usb_use_vmalloc)
		ret = FUNC12(substream,
						       FUNC2(hw_params));
	else
		ret = FUNC13(substream,
					       FUNC2(hw_params));
	if (ret < 0)
		goto stop_pipeline;

	subs->pcm_format = FUNC4(hw_params);
	subs->period_bytes = FUNC5(hw_params);
	subs->period_frames = FUNC6(hw_params);
	subs->buffer_periods = FUNC7(hw_params);
	subs->channels = FUNC3(hw_params);
	subs->cur_rate = FUNC8(hw_params);

	fmt = FUNC1(subs);
	if (!fmt) {
		FUNC0(&subs->dev->dev,
			"cannot set format: format = %#x, rate = %d, channels = %d\n",
			   subs->pcm_format, subs->cur_rate, subs->channels);
		ret = -EINVAL;
		goto stop_pipeline;
	}

	ret = FUNC14(subs->stream->chip);
	if (ret < 0)
		goto stop_pipeline;

	ret = FUNC15(subs, UAC3_PD_STATE_D0);
	if (ret < 0)
		goto unlock;

	ret = FUNC9(subs, fmt);
	if (ret < 0)
		goto unlock;

	subs->interface = fmt->iface;
	subs->altset_idx = fmt->altset_idx;
	subs->need_setup_ep = true;

 unlock:
	FUNC16(subs->stream->chip);
	if (ret < 0)
		goto stop_pipeline;
	return ret;

 stop_pipeline:
	FUNC11(subs);
	return ret;
}