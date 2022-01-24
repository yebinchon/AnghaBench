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
struct snd_card {char* id; TYPE_1__* proc_root; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int SNDRV_CARDS ; 
 scalar_t__ FUNC0 (struct snd_card*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void FUNC8(struct snd_card *card, const char *src,
				    const char *nid)
{
	int len, loops;
	bool is_default = false;
	char *id;
	
	FUNC1(card, src, nid);
	id = card->id;

 again:
	/* use "Default" for obviously invalid strings
	 * ("card" conflicts with proc directories)
	 */
	if (!*id || !FUNC7(id, "card", 4)) {
		FUNC4(id, "Default");
		is_default = true;
	}

	len = FUNC6(id);
	for (loops = 0; loops < SNDRV_CARDS; loops++) {
		char *spos;
		char sfxstr[5]; /* "_012" */
		int sfxlen;

		if (FUNC0(card, id))
			return; /* OK */

		/* Add _XYZ suffix */
		FUNC3(sfxstr, "_%X", loops + 1);
		sfxlen = FUNC6(sfxstr);
		if (len + sfxlen >= sizeof(card->id))
			spos = id + sizeof(card->id) - sfxlen - 1;
		else
			spos = id + len;
		FUNC4(spos, sfxstr);
	}
	/* fallback to the default id */
	if (!is_default) {
		*id = 0;
		goto again;
	}
	/* last resort... */
	FUNC2(card->dev, "unable to set card id (%s)\n", id);
	if (card->proc_root->name)
		FUNC5(card->id, card->proc_root->name, sizeof(card->id));
}