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
struct snd_ac97 {int dummy; } ;
struct ac97_codec_id {char* name; int flags; int mask; int /*<<< orphan*/  (* patch ) (struct snd_ac97*) ;} ;

/* Variables and functions */
 int AC97_MODEM_PATCH ; 
 struct ac97_codec_id* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  snd_ac97_codec_id_vendors ; 
 int /*<<< orphan*/  snd_ac97_codec_ids ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ac97*) ; 

void FUNC8(struct snd_ac97 *ac97, unsigned int id, char *name, int modem)
{
	const struct ac97_codec_id *pid;

	FUNC2(name, "0x%x %c%c%c", id,
		FUNC1(id >> 24),
		FUNC1(id >> 16),
		FUNC1(id >> 8));
	pid = FUNC0(snd_ac97_codec_id_vendors, id);
	if (! pid)
		return;

	FUNC4(name, pid->name);
	if (ac97 && pid->patch) {
		if ((modem && (pid->flags & AC97_MODEM_PATCH)) ||
		    (! modem && ! (pid->flags & AC97_MODEM_PATCH)))
			pid->patch(ac97);
	} 

	pid = FUNC0(snd_ac97_codec_ids, id);
	if (pid) {
		FUNC3(name, " ");
		FUNC3(name, pid->name);
		if (pid->mask != 0xffffffff)
			FUNC2(name + FUNC5(name), " rev %d", id & ~pid->mask);
		if (ac97 && pid->patch) {
			if ((modem && (pid->flags & AC97_MODEM_PATCH)) ||
			    (! modem && ! (pid->flags & AC97_MODEM_PATCH)))
				pid->patch(ac97);
		}
	} else
		FUNC2(name + FUNC5(name), " id %x", id & 0xff);
}