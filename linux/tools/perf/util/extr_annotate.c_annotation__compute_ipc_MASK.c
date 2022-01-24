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
struct cyc_hist {int num_aggr; int cycles_aggr; int /*<<< orphan*/  cycles_min; int /*<<< orphan*/  cycles_max; int /*<<< orphan*/  start; scalar_t__ have_start; scalar_t__ cycles; } ;
struct annotation_line {int cycles; int /*<<< orphan*/  cycles_min; int /*<<< orphan*/  cycles_max; } ;
struct annotation {int have_cycles; int /*<<< orphan*/  lock; struct annotation_line** offsets; TYPE_1__* src; scalar_t__ cover_insn; scalar_t__ hit_insn; scalar_t__ hit_cycles; int /*<<< orphan*/  total_insn; } ;
typedef  size_t s64 ;
struct TYPE_2__ {struct cyc_hist* cycles_hist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct annotation*,int /*<<< orphan*/ ,size_t,struct cyc_hist*) ; 
 int /*<<< orphan*/  FUNC1 (struct annotation*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct annotation *notes, size_t size)
{
	s64 offset;

	if (!notes->src || !notes->src->cycles_hist)
		return;

	notes->total_insn = FUNC1(notes, 0, size - 1);
	notes->hit_cycles = 0;
	notes->hit_insn = 0;
	notes->cover_insn = 0;

	FUNC2(&notes->lock);
	for (offset = size - 1; offset >= 0; --offset) {
		struct cyc_hist *ch;

		ch = &notes->src->cycles_hist[offset];
		if (ch && ch->cycles) {
			struct annotation_line *al;

			if (ch->have_start)
				FUNC0(notes, ch->start, offset, ch);
			al = notes->offsets[offset];
			if (al && ch->num_aggr) {
				al->cycles = ch->cycles_aggr / ch->num_aggr;
				al->cycles_max = ch->cycles_max;
				al->cycles_min = ch->cycles_min;
			}
			notes->have_cycles = true;
		}
	}
	FUNC3(&notes->lock);
}