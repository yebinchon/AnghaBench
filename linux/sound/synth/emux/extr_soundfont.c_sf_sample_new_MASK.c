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
struct snd_soundfont {struct snd_sf_sample* samples; } ;
struct snd_sf_sample {struct snd_sf_sample* next; } ;
struct snd_sf_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_sf_sample* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sf_list*,struct snd_soundfont*,struct snd_sf_sample*) ; 

__attribute__((used)) static struct snd_sf_sample *
FUNC2(struct snd_sf_list *sflist, struct snd_soundfont *sf)
{
	struct snd_sf_sample *sp;

	if ((sp = FUNC0(sizeof(*sp), GFP_KERNEL)) == NULL)
		return NULL;

	sp->next = sf->samples;
	sf->samples = sp;

	FUNC1(sflist, sf, sp);
	return sp;
}