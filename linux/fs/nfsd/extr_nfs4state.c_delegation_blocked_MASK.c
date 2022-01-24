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
typedef  int u32 ;
struct knfsd_fh {int /*<<< orphan*/  fh_size; int /*<<< orphan*/  fh_base; } ;
struct bloom_pair {scalar_t__ entries; int swap_time; scalar_t__ old_entries; size_t new; int /*<<< orphan*/ * set; } ;

/* Variables and functions */
 struct bloom_pair blocked_delegations ; 
 int /*<<< orphan*/  blocked_delegations_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct knfsd_fh *fh)
{
	u32 hash;
	struct bloom_pair *bd = &blocked_delegations;

	if (bd->entries == 0)
		return 0;
	if (FUNC2() - bd->swap_time > 30) {
		FUNC3(&blocked_delegations_lock);
		if (FUNC2() - bd->swap_time > 30) {
			bd->entries -= bd->old_entries;
			bd->old_entries = bd->entries;
			FUNC1(bd->set[bd->new], 0,
			       sizeof(bd->set[0]));
			bd->new = 1-bd->new;
			bd->swap_time = FUNC2();
		}
		FUNC4(&blocked_delegations_lock);
	}
	hash = FUNC0(&fh->fh_base, fh->fh_size, 0);
	if (FUNC5(hash&255, bd->set[0]) &&
	    FUNC5((hash>>8)&255, bd->set[0]) &&
	    FUNC5((hash>>16)&255, bd->set[0]))
		return 1;

	if (FUNC5(hash&255, bd->set[1]) &&
	    FUNC5((hash>>8)&255, bd->set[1]) &&
	    FUNC5((hash>>16)&255, bd->set[1]))
		return 1;

	return 0;
}