#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hdac_bus {int codec_mask; } ;
struct hda_codec {int /*<<< orphan*/  beep_mode; int /*<<< orphan*/  jackpoll_interval; } ;
struct azx {int codec_probe_mask; TYPE_1__* card; int /*<<< orphan*/  beep_mode; int /*<<< orphan*/  jackpoll_interval; int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int AZX_DEFAULT_CODECS ; 
 int ENXIO ; 
 struct hdac_bus* FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (struct azx*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,struct hda_codec**) ; 

int FUNC7(struct azx *chip, unsigned int max_slots)
{
	struct hdac_bus *bus = FUNC0(chip);
	int c, codecs, err;

	codecs = 0;
	if (!max_slots)
		max_slots = AZX_DEFAULT_CODECS;

	/* First try to probe all given codec slots */
	for (c = 0; c < max_slots; c++) {
		if ((bus->codec_mask & (1 << c)) & chip->codec_probe_mask) {
			if (FUNC5(chip, c) < 0) {
				/* Some BIOSen give you wrong codec addresses
				 * that don't exist
				 */
				FUNC4(chip->card->dev,
					 "Codec #%d probe error; disabling it...\n", c);
				bus->codec_mask &= ~(1 << c);
				/* More badly, accessing to a non-existing
				 * codec often screws up the controller chip,
				 * and disturbs the further communications.
				 * Thus if an error occurs during probing,
				 * better to reset the controller chip to
				 * get back to the sanity state.
				 */
				FUNC2(chip);
				FUNC1(chip, true);
			}
		}
	}

	/* Then create codec instances */
	for (c = 0; c < max_slots; c++) {
		if ((bus->codec_mask & (1 << c)) & chip->codec_probe_mask) {
			struct hda_codec *codec;
			err = FUNC6(&chip->bus, chip->card, c, &codec);
			if (err < 0)
				continue;
			codec->jackpoll_interval = chip->jackpoll_interval;
			codec->beep_mode = chip->beep_mode;
			codecs++;
		}
	}
	if (!codecs) {
		FUNC3(chip->card->dev, "no codecs initialized\n");
		return -ENXIO;
	}
	return 0;
}