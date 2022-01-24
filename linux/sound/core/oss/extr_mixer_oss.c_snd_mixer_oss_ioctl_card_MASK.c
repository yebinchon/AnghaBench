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
struct snd_mixer_oss_file {int /*<<< orphan*/ * mixer; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/ * mixer_oss; } ;
typedef  int /*<<< orphan*/  fmixer ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixer_oss_file*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_mixer_oss_file*,unsigned int,unsigned long) ; 

int FUNC3(struct snd_card *card, unsigned int cmd, unsigned long arg)
{
	struct snd_mixer_oss_file fmixer;
	
	if (FUNC1(!card))
		return -ENXIO;
	if (card->mixer_oss == NULL)
		return -ENXIO;
	FUNC0(&fmixer, 0, sizeof(fmixer));
	fmixer.card = card;
	fmixer.mixer = card->mixer_oss;
	return FUNC2(&fmixer, cmd, arg);
}