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
struct inode {int dummy; } ;
struct fuse_dev {int /*<<< orphan*/  fc; } ;
struct file {struct fuse_dev* private_data; } ;
struct cuse_conn {int /*<<< orphan*/  fc; TYPE_1__* cdev; scalar_t__ dev; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  cuse_lock ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct cuse_conn* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct fuse_dev *fud = file->private_data;
	struct cuse_conn *cc = FUNC2(fud->fc);
	int rc;

	/* remove from the conntbl, no more access from this point on */
	FUNC6(&cuse_lock);
	FUNC5(&cc->list);
	FUNC7(&cuse_lock);

	/* remove device */
	if (cc->dev)
		FUNC1(cc->dev);
	if (cc->cdev) {
		FUNC8(cc->cdev->dev, 1);
		FUNC0(cc->cdev);
	}
	/* Base reference is now owned by "fud" */
	FUNC3(&cc->fc);

	rc = FUNC4(inode, file);	/* puts the base reference */

	return rc;
}