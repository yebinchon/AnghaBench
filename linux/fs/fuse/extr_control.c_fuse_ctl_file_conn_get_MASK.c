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
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct fuse_conn* i_private; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct file*) ; 
 struct fuse_conn* FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  fuse_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fuse_conn *FUNC4(struct file *file)
{
	struct fuse_conn *fc;
	FUNC2(&fuse_mutex);
	fc = FUNC0(file)->i_private;
	if (fc)
		fc = FUNC1(fc);
	FUNC3(&fuse_mutex);
	return fc;
}