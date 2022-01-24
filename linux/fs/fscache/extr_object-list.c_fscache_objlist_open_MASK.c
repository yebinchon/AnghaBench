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
struct inode {int dummy; } ;
struct fscache_objlist_data {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fscache_objlist_data* FUNC0 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_objlist_data*) ; 
 int /*<<< orphan*/  fscache_objlist_ops ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct fscache_objlist_data *data;

	data = FUNC0(file, &fscache_objlist_ops, sizeof(*data));
	if (!data)
		return -ENOMEM;

	/* get the configuration key */
	FUNC1(data);

	return 0;
}