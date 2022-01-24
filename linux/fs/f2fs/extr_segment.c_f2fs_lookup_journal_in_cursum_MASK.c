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
struct f2fs_journal {int dummy; } ;

/* Variables and functions */
 int NAT_JOURNAL ; 
 int SIT_JOURNAL ; 
 scalar_t__ FUNC0 (struct f2fs_journal*,int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_journal*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_journal*,int) ; 
 int FUNC5 (struct f2fs_journal*) ; 
 int FUNC6 (struct f2fs_journal*,int) ; 
 int FUNC7 (struct f2fs_journal*,int) ; 

int FUNC8(struct f2fs_journal *journal, int type,
					unsigned int val, int alloc)
{
	int i;

	if (type == NAT_JOURNAL) {
		for (i = 0; i < FUNC2(journal); i++) {
			if (FUNC1(FUNC3(journal, i)) == val)
				return i;
		}
		if (alloc && FUNC0(journal, 1, NAT_JOURNAL))
			return FUNC6(journal, 1);
	} else if (type == SIT_JOURNAL) {
		for (i = 0; i < FUNC5(journal); i++)
			if (FUNC1(FUNC4(journal, i)) == val)
				return i;
		if (alloc && FUNC0(journal, 1, SIT_JOURNAL))
			return FUNC7(journal, 1);
	}
	return -1;
}