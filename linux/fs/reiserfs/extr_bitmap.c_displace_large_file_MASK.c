#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int search_start; int beg; int end; int /*<<< orphan*/  inode; TYPE_1__* th; } ;
typedef  TYPE_2__ reiserfs_blocknr_hint_t ;
struct TYPE_7__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  t_super; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  displace_based_on_dirid ; 
 int FUNC2 (char*,int) ; 

__attribute__((used)) static inline void FUNC3(reiserfs_blocknr_hint_t * hint)
{
	if (FUNC1(displace_based_on_dirid, hint->th->t_super))
		hint->search_start =
		    hint->beg +
		    FUNC2((char *)(&FUNC0(hint->inode)->k_dir_id),
			       4) % (hint->end - hint->beg);
	else
		hint->search_start =
		    hint->beg +
		    FUNC2((char *)(&FUNC0(hint->inode)->k_objectid),
			       4) % (hint->end - hint->beg);
}