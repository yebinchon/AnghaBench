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
struct snd_card {int /*<<< orphan*/  dev; } ;
struct hdspm {int midiPorts; int system_sample_rate; int last_external_sample_rate; int last_internal_sample_rate; int playback_pid; int capture_pid; int /*<<< orphan*/ * playback_substream; int /*<<< orphan*/ * capture_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm*) ; 
 int FUNC3 (struct snd_card*) ; 
 int FUNC4 (struct snd_card*,struct hdspm*) ; 
 int FUNC5 (struct snd_card*,struct hdspm*) ; 
 int FUNC6 (struct snd_card*,struct hdspm*,int) ; 
 int FUNC7 (struct snd_card*,struct hdspm*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdspm*) ; 
 int FUNC9 (struct hdspm*) ; 

__attribute__((used)) static int FUNC10(struct snd_card *card,
					 struct hdspm *hdspm)
{
	int err, i;

	FUNC0(card->dev, "Create card...\n");
	err = FUNC7(card, hdspm);
	if (err < 0)
		return err;

	i = 0;
	while (i < hdspm->midiPorts) {
		err = FUNC6(card, hdspm, i);
		if (err < 0) {
			return err;
		}
		i++;
	}

	err = FUNC4(card, hdspm);
	if (err < 0)
		return err;

	err = FUNC5(card, hdspm);
	if (err < 0)
		return err;

	FUNC0(card->dev, "proc init...\n");
	FUNC8(hdspm);

	hdspm->system_sample_rate = -1;
	hdspm->last_external_sample_rate = -1;
	hdspm->last_internal_sample_rate = -1;
	hdspm->playback_pid = -1;
	hdspm->capture_pid = -1;
	hdspm->capture_substream = NULL;
	hdspm->playback_substream = NULL;

	FUNC0(card->dev, "Set defaults...\n");
	err = FUNC9(hdspm);
	if (err < 0)
		return err;

	FUNC0(card->dev, "Update mixer controls...\n");
	FUNC2(hdspm);

	FUNC0(card->dev, "Initializing complete?\n");

	err = FUNC3(card);
	if (err < 0) {
		FUNC1(card->dev, "error registering card\n");
		return err;
	}

	FUNC0(card->dev, "... yes now\n");

	return 0;
}