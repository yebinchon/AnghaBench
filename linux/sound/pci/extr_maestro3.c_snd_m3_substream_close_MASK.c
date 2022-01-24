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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int /*<<< orphan*/  reg_lock; } ;
struct m3_dma {scalar_t__ opened; scalar_t__ running; scalar_t__ in_lists; int /*<<< orphan*/ * index; int /*<<< orphan*/ * index_list; scalar_t__ substream; } ;
struct TYPE_2__ {struct m3_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_m3*,struct m3_dma*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_m3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct snd_m3 *chip, struct snd_pcm_substream *subs)
{
	struct m3_dma *s = subs->runtime->private_data;

	if (s == NULL)
		return; /* not opened properly */

	FUNC2(&chip->reg_lock);
	if (s->substream && s->running)
		FUNC0(chip, s, s->substream); /* does this happen? */
	if (s->in_lists) {
		FUNC1(chip, s->index_list[0], s->index[0]);
		FUNC1(chip, s->index_list[1], s->index[1]);
		FUNC1(chip, s->index_list[2], s->index[2]);
		s->in_lists = 0;
	}
	s->running = 0;
	s->opened = 0;
	FUNC3(&chip->reg_lock);
}