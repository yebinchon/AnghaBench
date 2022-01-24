#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct fuse_dev {int dummy; } ;
struct file {struct fuse_dev* private_data; TYPE_1__* f_cred; } ;
struct TYPE_6__ {int initialized; int /*<<< orphan*/  release; } ;
struct cuse_conn {TYPE_2__ fc; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cuse_fc_release ; 
 int FUNC1 (struct cuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct fuse_dev* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  fuse_dev_fiq_ops ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cuse_conn*) ; 
 struct cuse_conn* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct fuse_dev *fud;
	struct cuse_conn *cc;
	int rc;

	/* set up cuse_conn */
	cc = FUNC7(sizeof(*cc), GFP_KERNEL);
	if (!cc)
		return -ENOMEM;

	/*
	 * Limit the cuse channel to requests that can
	 * be represented in file->f_cred->user_ns.
	 */
	FUNC2(&cc->fc, file->f_cred->user_ns, &fuse_dev_fiq_ops, NULL);

	fud = FUNC4(&cc->fc);
	if (!fud) {
		FUNC6(cc);
		return -ENOMEM;
	}

	FUNC0(&cc->list);
	cc->fc.release = cuse_fc_release;

	cc->fc.initialized = 1;
	rc = FUNC1(cc);
	if (rc) {
		FUNC5(fud);
		FUNC3(&cc->fc);
		return rc;
	}
	file->private_data = fud;

	return 0;
}