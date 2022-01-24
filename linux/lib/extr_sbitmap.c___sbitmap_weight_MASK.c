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
struct sbitmap_word {int /*<<< orphan*/  depth; int /*<<< orphan*/  cleared; int /*<<< orphan*/  word; } ;
struct sbitmap {unsigned int map_nr; struct sbitmap_word* map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(const struct sbitmap *sb, bool set)
{
	unsigned int i, weight = 0;

	for (i = 0; i < sb->map_nr; i++) {
		const struct sbitmap_word *word = &sb->map[i];

		if (set)
			weight += FUNC0(&word->word, word->depth);
		else
			weight += FUNC0(&word->cleared, word->depth);
	}
	return weight;
}