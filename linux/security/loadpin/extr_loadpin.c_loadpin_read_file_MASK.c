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
struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mnt; } ;
struct file {TYPE_2__ f_path; } ;
typedef  enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  enforce ; 
 scalar_t__* ignore_read_file_id ; 
 char* FUNC3 (int) ; 
 struct super_block* pinned_root ; 
 int /*<<< orphan*/  pinned_root_spinlock ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct file *file, enum kernel_read_file_id id)
{
	struct super_block *load_root;
	const char *origin = FUNC3(id);

	/* If the file id is excluded, ignore the pinning. */
	if ((unsigned int)id < FUNC0(ignore_read_file_id) &&
	    ignore_read_file_id[id]) {
		FUNC4(origin, file, "pinning-excluded");
		return 0;
	}

	/* This handles the older init_module API that has a NULL file. */
	if (!file) {
		if (!enforce) {
			FUNC4(origin, NULL, "old-api-pinning-ignored");
			return 0;
		}

		FUNC4(origin, NULL, "old-api-denied");
		return -EPERM;
	}

	load_root = file->f_path.mnt->mnt_sb;

	/* First loaded module/firmware defines the root for all others. */
	FUNC5(&pinned_root_spinlock);
	/*
	 * pinned_root is only NULL at startup. Otherwise, it is either
	 * a valid reference, or an ERR_PTR.
	 */
	if (!pinned_root) {
		pinned_root = load_root;
		/*
		 * Unlock now since it's only pinned_root we care about.
		 * In the worst case, we will (correctly) report pinning
		 * failures before we have announced that pinning is
		 * enforcing. This would be purely cosmetic.
		 */
		FUNC6(&pinned_root_spinlock);
		FUNC2(pinned_root);
		FUNC4(origin, file, "pinned");
	} else {
		FUNC6(&pinned_root_spinlock);
	}

	if (FUNC1(pinned_root) || load_root != pinned_root) {
		if (FUNC7(!enforce)) {
			FUNC4(origin, file, "pinning-ignored");
			return 0;
		}

		FUNC4(origin, file, "denied");
		return -EPERM;
	}

	return 0;
}