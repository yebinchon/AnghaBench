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
struct fuse_dev {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  dev_count; } ;
struct file {struct fuse_dev* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fuse_dev* FUNC1 (struct fuse_conn*) ; 

__attribute__((used)) static int FUNC2(struct fuse_conn *fc, struct file *new)
{
	struct fuse_dev *fud;

	if (new->private_data)
		return -EINVAL;

	fud = FUNC1(fc);
	if (!fud)
		return -ENOMEM;

	new->private_data = fud;
	FUNC0(&fc->dev_count);

	return 0;
}