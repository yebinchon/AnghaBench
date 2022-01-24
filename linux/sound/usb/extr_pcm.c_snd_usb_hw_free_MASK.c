#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_substream {TYPE_1__* stream; int /*<<< orphan*/  data_endpoint; int /*<<< orphan*/  sync_endpoint; scalar_t__ period_bytes; scalar_t__ cur_rate; int /*<<< orphan*/ * cur_audiofmt; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {struct snd_usb_substream* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_usb_substream*) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ snd_usb_use_vmalloc ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_substream*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_usb_substream *subs = substream->runtime->private_data;

	FUNC0(subs);
	subs->cur_audiofmt = NULL;
	subs->cur_rate = 0;
	subs->period_bytes = 0;
	if (!FUNC4(subs->stream->chip)) {
		FUNC6(subs, true);
		FUNC3(subs->sync_endpoint);
		FUNC3(subs->data_endpoint);
		FUNC5(subs->stream->chip);
	}

	if (snd_usb_use_vmalloc)
		return FUNC2(substream);
	else
		return FUNC1(substream);
}