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
struct snd_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; } ;
struct hdsp {scalar_t__ io_type; int system_sample_rate; int playback_pid; int capture_pid; int state; char* card_name; int /*<<< orphan*/  irq; int /*<<< orphan*/  port; int /*<<< orphan*/ * playback_substream; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 scalar_t__ Digiface ; 
 scalar_t__ H9652 ; 
 int HDSP_InitializationComplete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct snd_card*,struct hdsp*) ; 
 int FUNC3 (struct snd_card*,struct hdsp*,int) ; 
 int FUNC4 (struct snd_card*,struct hdsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct hdsp*) ; 
 int FUNC6 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct snd_card *card, struct hdsp *hdsp)
{
	int err;

	if ((err = FUNC4(card, hdsp)) < 0) {
		FUNC0(card->dev,
			"Error creating pcm interface\n");
		return err;
	}


	if ((err = FUNC3(card, hdsp, 0)) < 0) {
		FUNC0(card->dev,
			"Error creating first midi interface\n");
		return err;
	}

	if (hdsp->io_type == Digiface || hdsp->io_type == H9652) {
		if ((err = FUNC3(card, hdsp, 1)) < 0) {
			FUNC0(card->dev,
				"Error creating second midi interface\n");
			return err;
		}
	}

	if ((err = FUNC2(card, hdsp)) < 0) {
		FUNC0(card->dev,
			"Error creating ctl interface\n");
		return err;
	}

	FUNC5(hdsp);

	hdsp->system_sample_rate = -1;
	hdsp->playback_pid = -1;
	hdsp->capture_pid = -1;
	hdsp->capture_substream = NULL;
	hdsp->playback_substream = NULL;

	if ((err = FUNC6(hdsp)) < 0) {
		FUNC0(card->dev,
			"Error setting default values\n");
		return err;
	}

	if (!(hdsp->state & HDSP_InitializationComplete)) {
		FUNC8(card->shortname, "Hammerfall DSP");
		FUNC7(card->longname, "%s at 0x%lx, irq %d", hdsp->card_name,
			hdsp->port, hdsp->irq);

		if ((err = FUNC1(card)) < 0) {
			FUNC0(card->dev,
				"error registering card\n");
			return err;
		}
		hdsp->state |= HDSP_InitializationComplete;
	}

	return 0;
}