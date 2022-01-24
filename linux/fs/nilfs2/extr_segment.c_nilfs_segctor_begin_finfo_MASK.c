#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_binfo_ptr; int /*<<< orphan*/  sc_finfo_ptr; TYPE_2__* sc_curseg; } ;
struct nilfs_finfo {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  nfinfo; } ;
struct TYPE_5__ {TYPE_1__ sb_sum; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_SC_HAVE_DELTA ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nilfs_sc_info *sci,
				      struct inode *inode)
{
	sci->sc_curseg->sb_sum.nfinfo++;
	sci->sc_binfo_ptr = sci->sc_finfo_ptr;
	FUNC1(
		sci, &sci->sc_binfo_ptr, sizeof(struct nilfs_finfo));

	if (FUNC0(inode)->i_root &&
	    !FUNC3(NILFS_SC_HAVE_DELTA, &sci->sc_flags))
		FUNC2(NILFS_SC_HAVE_DELTA, &sci->sc_flags);
	/* skip finfo */
}