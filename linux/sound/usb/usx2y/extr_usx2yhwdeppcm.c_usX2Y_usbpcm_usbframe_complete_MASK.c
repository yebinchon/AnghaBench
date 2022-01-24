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
struct urb {int dummy; } ;
struct snd_usX2Y_substream {struct urb* completed_urb; int /*<<< orphan*/  state; struct urb** urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int state_PREPARED ; 
 int state_PRERUNNING ; 
 int state_RUNNING ; 
#define  state_STARTING1 129 
#define  state_STARTING2 128 
 int FUNC2 (struct snd_usX2Y_substream*,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usX2Y_substream*,struct urb*) ; 
 int FUNC4 (struct snd_usX2Y_substream*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usX2Y_substream*,struct urb*) ; 
 int FUNC6 (struct snd_usX2Y_substream*) ; 

__attribute__((used)) static inline int FUNC7(struct snd_usX2Y_substream *capsubs,
						 struct snd_usX2Y_substream *capsubs2,
						 struct snd_usX2Y_substream *playbacksubs,
						 int frame)
{
	int err, state;
	struct urb *urb = playbacksubs->completed_urb;

	state = FUNC1(&playbacksubs->state);
	if (NULL != urb) {
		if (state == state_RUNNING)
			FUNC3(playbacksubs, urb);
		else if (state >= state_PRERUNNING)
			FUNC0(&playbacksubs->state);
	} else {
		switch (state) {
		case state_STARTING1:
			urb = playbacksubs->urb[0];
			FUNC0(&playbacksubs->state);
			break;
		case state_STARTING2:
			urb = playbacksubs->urb[1];
			FUNC0(&playbacksubs->state);
			break;
		}
	}
	if (urb) {
		if ((err = FUNC2(playbacksubs, urb)) ||
		    (err = FUNC4(playbacksubs, urb, frame))) {
			return err;
		}
	}
	
	playbacksubs->completed_urb = NULL;

	state = FUNC1(&capsubs->state);
	if (state >= state_PREPARED) {
		if (state == state_RUNNING) {
			if ((err = FUNC6(capsubs)))
				return err;
		} else if (state >= state_PRERUNNING)
			FUNC0(&capsubs->state);
		FUNC5(capsubs, capsubs->completed_urb);
		if (NULL != capsubs2)
			FUNC5(NULL, capsubs2->completed_urb);
		if ((err = FUNC4(capsubs, capsubs->completed_urb, frame)))
			return err;
		if (NULL != capsubs2)
			if ((err = FUNC4(capsubs2, capsubs2->completed_urb, frame)))
				return err;
	}
	capsubs->completed_urb = NULL;
	if (NULL != capsubs2)
		capsubs2->completed_urb = NULL;
	return 0;
}