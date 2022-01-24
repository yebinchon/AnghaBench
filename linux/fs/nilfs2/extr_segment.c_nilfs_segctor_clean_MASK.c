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
struct nilfs_sc_info {scalar_t__ sc_nfreesegs; int /*<<< orphan*/  sc_gc_inodes; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_dirty_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_DIRTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nilfs_sc_info *sci)
{
	return FUNC0(&sci->sc_dirty_files) &&
		!FUNC2(NILFS_SC_DIRTY, &sci->sc_flags) &&
		sci->sc_nfreesegs == 0 &&
		(!FUNC1() || FUNC0(&sci->sc_gc_inodes));
}