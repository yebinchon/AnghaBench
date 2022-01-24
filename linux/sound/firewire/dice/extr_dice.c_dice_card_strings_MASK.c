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
typedef  int /*<<< orphan*/  vendor ;
typedef  int /*<<< orphan*/  u32 ;
struct snd_dice {TYPE_1__* unit; struct snd_card* card; } ;
struct snd_card {char* driver; char* shortname; char* mixername; int /*<<< orphan*/  longname; } ;
struct fw_device {int* config_rom; int max_speed; } ;
typedef  int /*<<< orphan*/  model ;
struct TYPE_2__ {int* directory; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CSR_MODEL ; 
 int /*<<< orphan*/  CSR_VENDOR ; 
 int /*<<< orphan*/  GLOBAL_NICK_NAME ; 
 int NICK_NAME_SIZE ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,char*,int) ; 
 struct fw_device* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct snd_dice*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct snd_dice *dice)
{
	struct snd_card *card = dice->card;
	struct fw_device *dev = FUNC3(dice->unit);
	char vendor[32], model[32];
	unsigned int i;
	int err;

	FUNC6(card->driver, "DICE");

	FUNC6(card->shortname, "DICE");
	FUNC0(NICK_NAME_SIZE < sizeof(card->shortname));
	err = FUNC4(dice, GLOBAL_NICK_NAME,
					       card->shortname,
					       sizeof(card->shortname));
	if (err >= 0) {
		/* DICE strings are returned in "always-wrong" endianness */
		FUNC0(sizeof(card->shortname) % 4 != 0);
		for (i = 0; i < sizeof(card->shortname); i += 4)
			FUNC7((u32 *)&card->shortname[i]);
		card->shortname[sizeof(card->shortname) - 1] = '\0';
	}

	FUNC6(vendor, "?");
	FUNC2(dev->config_rom + 5, CSR_VENDOR, vendor, sizeof(vendor));
	FUNC6(model, "?");
	FUNC2(dice->unit->directory, CSR_MODEL, model, sizeof(model));
	FUNC5(card->longname, sizeof(card->longname),
		 "%s %s (serial %u) at %s, S%d",
		 vendor, model, dev->config_rom[4] & 0x3fffff,
		 FUNC1(&dice->unit->device), 100 << dev->max_speed);

	FUNC6(card->mixername, "DICE");
}