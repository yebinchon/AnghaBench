#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_ndirtyblks; } ;
struct nilfs_super_block {int dummy; } ;
struct nilfs_sc_info {TYPE_1__* sc_super; int /*<<< orphan*/  sc_flags; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NILFS_SB_COMMIT ; 
 int /*<<< orphan*/  NILFS_SC_SUPER_ROOT ; 
 int SC_FLUSH_DAT ; 
 int SC_LSEG_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct the_nilfs*) ; 
 struct nilfs_super_block** FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_sc_info*) ; 
 int FUNC9 (struct nilfs_sc_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nilfs_super_block*,struct the_nilfs*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct nilfs_sc_info *sci, int mode)
{
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
	struct nilfs_super_block **sbp;
	int err = 0;

	FUNC7(sci);

	if (FUNC4(nilfs))
		mode = SC_LSEG_SR;
	if (!FUNC8(sci))
		err = FUNC9(sci, mode);

	if (FUNC2(!err)) {
		if (mode != SC_FLUSH_DAT)
			FUNC0(&nilfs->ns_ndirtyblks, 0);
		if (FUNC12(NILFS_SC_SUPER_ROOT, &sci->sc_flags) &&
		    FUNC4(nilfs)) {
			FUNC1(&nilfs->ns_sem);
			err = -EIO;
			sbp = FUNC5(sci->sc_super,
						  FUNC6(nilfs));
			if (FUNC2(sbp)) {
				FUNC11(sbp[0], nilfs);
				err = FUNC3(sci->sc_super,
							 NILFS_SB_COMMIT);
			}
			FUNC13(&nilfs->ns_sem);
		}
	}

	FUNC10(sci, mode, err);
	return err;
}