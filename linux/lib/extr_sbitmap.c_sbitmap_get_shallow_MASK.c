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
struct sbitmap {unsigned int map_nr; unsigned int shift; TYPE_1__* map; } ;
struct TYPE_2__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbitmap*,unsigned int) ; 
 unsigned int FUNC1 (struct sbitmap*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (struct sbitmap*,unsigned int) ; 

int FUNC5(struct sbitmap *sb, unsigned int alloc_hint,
			unsigned long shallow_depth)
{
	unsigned int i, index;
	int nr = -1;

	index = FUNC1(sb, alloc_hint);

	for (i = 0; i < sb->map_nr; i++) {
again:
		nr = FUNC2(&sb->map[index].word,
					FUNC3(sb->map[index].depth, shallow_depth),
					FUNC0(sb, alloc_hint), true);
		if (nr != -1) {
			nr += index << sb->shift;
			break;
		}

		if (FUNC4(sb, index))
			goto again;

		/* Jump to next index. */
		index++;
		alloc_hint = index << sb->shift;

		if (index >= sb->map_nr) {
			index = 0;
			alloc_hint = 0;
		}
	}

	return nr;
}