#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hda_jack_tbl {int phantom_jack; int type; TYPE_1__* jack; scalar_t__ button_state; } ;
struct hda_jack_keymap {int type; int /*<<< orphan*/  key; } ;
struct hda_codec {int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_4__ {int /*<<< orphan*/  private_free; struct hda_jack_tbl* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hda_free_jack_priv ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hda_jack_tbl* FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct hda_codec *codec, hda_nid_t nid,
			  const char *name, bool phantom_jack,
			  int type, const struct hda_jack_keymap *keymap)
{
	struct hda_jack_tbl *jack;
	const struct hda_jack_keymap *map;
	int err, state, buttons;

	jack = FUNC2(codec, nid);
	if (!jack)
		return 0;
	if (jack->jack)
		return 0; /* already created */

	if (!type)
		type = FUNC0(codec, nid);

	buttons = 0;
	if (keymap) {
		for (map = keymap; map->type; map++)
			buttons |= map->type;
	}

	err = FUNC3(codec->card, name, type | buttons,
			   &jack->jack, true, phantom_jack);
	if (err < 0)
		return err;

	jack->phantom_jack = !!phantom_jack;
	jack->type = type;
	jack->button_state = 0;
	jack->jack->private_data = jack;
	jack->jack->private_free = hda_free_jack_priv;
	if (keymap) {
		for (map = keymap; map->type; map++)
			FUNC5(jack->jack, map->type, map->key);
	}

	state = FUNC1(codec, nid);
	FUNC4(jack->jack, state ? jack->type : 0);

	return 0;
}