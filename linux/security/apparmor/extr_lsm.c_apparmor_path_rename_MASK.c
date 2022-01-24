#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path_cond {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int AA_MAY_CREATE ; 
 int AA_MAY_DELETE ; 
 int AA_MAY_GETATTR ; 
 int AA_MAY_SETATTR ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  OP_RENAME_DEST ; 
 int /*<<< orphan*/  OP_RENAME_SRC ; 
 int FUNC0 (int /*<<< orphan*/ ,struct aa_label*,struct path*,int /*<<< orphan*/ ,int,struct path_cond*) ; 
 struct aa_label* FUNC1 () ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 

__attribute__((used)) static int FUNC6(const struct path *old_dir, struct dentry *old_dentry,
				const struct path *new_dir, struct dentry *new_dentry)
{
	struct aa_label *label;
	int error = 0;

	if (!FUNC4(old_dentry))
		return 0;

	label = FUNC1();
	if (!FUNC5(label)) {
		struct path old_path = { .mnt = old_dir->mnt,
					 .dentry = old_dentry };
		struct path new_path = { .mnt = new_dir->mnt,
					 .dentry = new_dentry };
		struct path_cond cond = { FUNC2(old_dentry)->i_uid,
					  FUNC2(old_dentry)->i_mode
		};

		error = FUNC0(OP_RENAME_SRC, label, &old_path, 0,
				     MAY_READ | AA_MAY_GETATTR | MAY_WRITE |
				     AA_MAY_SETATTR | AA_MAY_DELETE,
				     &cond);
		if (!error)
			error = FUNC0(OP_RENAME_DEST, label, &new_path,
					     0, MAY_WRITE | AA_MAY_SETATTR |
					     AA_MAY_CREATE, &cond);

	}
	FUNC3(label);

	return error;
}