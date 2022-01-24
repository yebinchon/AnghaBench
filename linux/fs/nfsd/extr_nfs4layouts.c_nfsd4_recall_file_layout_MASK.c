#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sc_count; int /*<<< orphan*/  sc_stateid; TYPE_2__* sc_file; } ;
struct nfs4_layout_stateid {int ls_recalled; int /*<<< orphan*/  ls_lock; int /*<<< orphan*/  ls_recall; TYPE_1__ ls_stid; int /*<<< orphan*/  ls_layouts; } ;
struct TYPE_4__ {int /*<<< orphan*/  fi_lo_recalls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct nfs4_layout_stateid *ls)
{
	FUNC4(&ls->ls_lock);
	if (ls->ls_recalled)
		goto out_unlock;

	ls->ls_recalled = true;
	FUNC0(&ls->ls_stid.sc_file->fi_lo_recalls);
	if (FUNC1(&ls->ls_layouts))
		goto out_unlock;

	FUNC6(&ls->ls_stid.sc_stateid);

	FUNC3(&ls->ls_stid.sc_count);
	FUNC2(&ls->ls_recall);

out_unlock:
	FUNC5(&ls->ls_lock);
}