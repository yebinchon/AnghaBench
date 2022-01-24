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
struct usX2Ydev {int /*<<< orphan*/  wait_iso_frame; struct snd_usX2Y_substream** subs; int /*<<< orphan*/  dev; } ;
struct urb {int status; int /*<<< orphan*/  start_frame; int /*<<< orphan*/  pipe; struct snd_usX2Y_substream* context; } ;
struct snd_usX2Y_substream {int /*<<< orphan*/  state; struct urb* completed_urb; int /*<<< orphan*/  endpoint; struct usX2Ydev* usX2Y; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ state_PREPARED ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct usX2Ydev*) ; 
 int /*<<< orphan*/  FUNC5 (struct usX2Ydev*,struct snd_usX2Y_substream*,struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usX2Y_substream*,struct snd_usX2Y_substream*,struct snd_usX2Y_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct snd_usX2Y_substream *subs = urb->context;
	struct usX2Ydev *usX2Y = subs->usX2Y;
	struct snd_usX2Y_substream *capsubs, *capsubs2, *playbacksubs;

	if (FUNC3(FUNC0(&subs->state) < state_PREPARED)) {
		FUNC2("hcd_frame=%i ep=%i%s status=%i start_frame=%i\n",
			    FUNC7(usX2Y->dev),
			    subs->endpoint, FUNC8(urb->pipe) ? "in" : "out",
			    urb->status, urb->start_frame);
		return;
	}
	if (FUNC3(urb->status)) {
		FUNC5(usX2Y, subs, urb);
		return;
	}

	subs->completed_urb = urb;
	capsubs = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE];
	capsubs2 = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE + 2];
	playbacksubs = usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
	if (capsubs->completed_urb && FUNC0(&capsubs->state) >= state_PREPARED &&
	    (NULL == capsubs2 || capsubs2->completed_urb) &&
	    (playbacksubs->completed_urb || FUNC0(&playbacksubs->state) < state_PREPARED)) {
		if (!FUNC6(capsubs, capsubs2, playbacksubs, urb->start_frame))
			usX2Y->wait_iso_frame += FUNC1();
		else {
			FUNC2("\n");
			FUNC4(usX2Y);
		}
	}
}