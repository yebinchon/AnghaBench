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
struct snd_rawmidi_info {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_card*,struct snd_rawmidi_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 

int FUNC3(struct snd_card *card, struct snd_rawmidi_info *info)
{
	int ret;

	FUNC1(&register_mutex);
	ret = FUNC0(card, info);
	FUNC2(&register_mutex);
	return ret;
}