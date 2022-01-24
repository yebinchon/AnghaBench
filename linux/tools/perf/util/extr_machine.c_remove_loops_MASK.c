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
struct iterations {scalar_t__ from; } ;
struct branch_entry {scalar_t__ from; } ;
typedef  int /*<<< orphan*/  chash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHASHBITS ; 
 int CHASHSZ ; 
 unsigned char NO_ENTRY ; 
 int PERF_MAX_BRANCH_DEPTH ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iterations*,struct iterations*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iterations*,struct iterations*,int) ; 

__attribute__((used)) static int FUNC5(struct branch_entry *l, int nr,
			struct iterations *iter)
{
	int i, j, off;
	unsigned char chash[CHASHSZ];

	FUNC3(chash, NO_ENTRY, sizeof(chash));

	FUNC0(PERF_MAX_BRANCH_DEPTH > 255);

	for (i = 0; i < nr; i++) {
		int h = FUNC1(l[i].from, CHASHBITS) % CHASHSZ;

		/* no collision handling for now */
		if (chash[h] == NO_ENTRY) {
			chash[h] = i;
		} else if (l[chash[h]].from == l[i].from) {
			bool is_loop = true;
			/* check if it is a real loop */
			off = 0;
			for (j = chash[h]; j < i && i + off < nr; j++, off++)
				if (l[j].from != l[i + off].from) {
					is_loop = false;
					break;
				}
			if (is_loop) {
				j = nr - (i + off);
				if (j > 0) {
					FUNC4(iter + i + off,
						l + i, off);

					FUNC2(iter + i, iter + i + off,
						j * sizeof(*iter));

					FUNC2(l + i, l + i + off,
						j * sizeof(*l));
				}

				nr -= off;
			}
		}
	}
	return nr;
}