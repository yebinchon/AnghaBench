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
struct bloom_pair {size_t new; scalar_t__ entries; int /*<<< orphan*/  swap_time; int /*<<< orphan*/ * set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct bloom_pair blocked_delegations ; 
 int /*<<< orphan*/  blocked_delegations_lock ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct knfsd_fh *fh)
{
	u32 hash;
	struct bloom_pair *bd = &blocked_delegations;

	hash = FUNC1(&fh->fh_base, fh->fh_size, 0);

	FUNC3(&blocked_delegations_lock);
	FUNC0(hash&255, bd->set[bd->new]);
	FUNC0((hash>>8)&255, bd->set[bd->new]);
	FUNC0((hash>>16)&255, bd->set[bd->new]);
	if (bd->entries == 0)
		bd->swap_time = FUNC2();
	bd->entries += 1;
	FUNC4(&blocked_delegations_lock);
}