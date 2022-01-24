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
struct snd_usb_substream {int interface; TYPE_2__* stream; int /*<<< orphan*/ * pcm_substream; int /*<<< orphan*/  dev; } ;
struct snd_usb_stream {TYPE_1__* chip; struct snd_usb_substream* substream; } ;
struct snd_pcm_substream {int stream; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  keep_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  UAC3_PD_STATE_D1 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_substream*) ; 
 struct snd_usb_stream* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_usb_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_substream*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	int direction = substream->stream;
	struct snd_usb_stream *as = FUNC1(substream);
	struct snd_usb_substream *subs = &as->substream[direction];
	int ret;

	FUNC6(subs, true);
	FUNC0(subs);

	if (!as->chip->keep_iface &&
	    subs->interface >= 0 &&
	    !FUNC3(subs->stream->chip)) {
		FUNC7(subs->dev, subs->interface, 0);
		subs->interface = -1;
		ret = FUNC4(subs, UAC3_PD_STATE_D1);
		FUNC5(subs->stream->chip);
		if (ret < 0)
			return ret;
	}

	subs->pcm_substream = NULL;
	FUNC2(subs->stream->chip);

	return 0;
}