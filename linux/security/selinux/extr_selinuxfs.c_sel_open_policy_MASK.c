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
struct selinux_state {int dummy; } ;
struct selinux_fs_info {int policy_opened; int /*<<< orphan*/  mutex; struct selinux_state* state; } ;
struct policy_load_memory {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {struct policy_load_memory* private_data; } ;
struct TYPE_2__ {struct selinux_fs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct policy_load_memory*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SECCLASS_SECURITY ; 
 int /*<<< orphan*/  SECINITSID_SECURITY ; 
 int /*<<< orphan*/  SECURITY__READ_POLICY ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct policy_load_memory*) ; 
 struct policy_load_memory* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct selinux_state*) ; 
 int FUNC12 (struct selinux_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *filp)
{
	struct selinux_fs_info *fsi = inode->i_sb->s_fs_info;
	struct selinux_state *state = fsi->state;
	struct policy_load_memory *plm = NULL;
	int rc;

	FUNC0(filp->private_data);

	FUNC9(&fsi->mutex);

	rc = FUNC1(&selinux_state,
			  FUNC2(), SECINITSID_SECURITY,
			  SECCLASS_SECURITY, SECURITY__READ_POLICY, NULL);
	if (rc)
		goto err;

	rc = -EBUSY;
	if (fsi->policy_opened)
		goto err;

	rc = -ENOMEM;
	plm = FUNC8(sizeof(*plm), GFP_KERNEL);
	if (!plm)
		goto err;

	if (FUNC3(inode) != FUNC11(state)) {
		FUNC5(inode);
		FUNC4(inode, FUNC11(state));
		FUNC6(inode);
	}

	rc = FUNC12(state, &plm->data, &plm->len);
	if (rc)
		goto err;

	fsi->policy_opened = 1;

	filp->private_data = plm;

	FUNC10(&fsi->mutex);

	return 0;
err:
	FUNC10(&fsi->mutex);

	if (plm)
		FUNC13(plm->data);
	FUNC7(plm);
	return rc;
}