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
struct snd_usb_substream {scalar_t__ sync_endpoint; int /*<<< orphan*/  cur_audiofmt; int /*<<< orphan*/  cur_rate; int /*<<< orphan*/  buffer_periods; int /*<<< orphan*/  period_frames; int /*<<< orphan*/  period_bytes; int /*<<< orphan*/  channels; int /*<<< orphan*/  pcm_format; int /*<<< orphan*/  data_endpoint; } ;

/* Variables and functions */
 int FUNC0 (struct snd_usb_substream*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_substream*,int) ; 

__attribute__((used)) static int FUNC3(struct snd_usb_substream *subs)
{
	int ret;

	/* format changed */
	FUNC2(subs, true);
	ret = FUNC1(subs->data_endpoint,
					  subs->pcm_format,
					  subs->channels,
					  subs->period_bytes,
					  subs->period_frames,
					  subs->buffer_periods,
					  subs->cur_rate,
					  subs->cur_audiofmt,
					  subs->sync_endpoint);
	if (ret < 0)
		return ret;

	if (subs->sync_endpoint)
		ret = FUNC0(subs);

	return ret;
}