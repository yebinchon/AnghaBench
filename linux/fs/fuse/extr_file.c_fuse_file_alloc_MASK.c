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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fuse_file {int /*<<< orphan*/  kh; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  polled_node; int /*<<< orphan*/  count; TYPE_1__ readdir; int /*<<< orphan*/  write_entry; void* release_args; struct fuse_conn* fc; } ;
struct fuse_conn {int /*<<< orphan*/  khctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_file*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int) ; 

struct fuse_file *FUNC9(struct fuse_conn *fc)
{
	struct fuse_file *ff;

	ff = FUNC5(sizeof(struct fuse_file), GFP_KERNEL_ACCOUNT);
	if (FUNC8(!ff))
		return NULL;

	ff->fc = fc;
	ff->release_args = FUNC5(sizeof(*ff->release_args),
				   GFP_KERNEL_ACCOUNT);
	if (!ff->release_args) {
		FUNC4(ff);
		return NULL;
	}

	FUNC0(&ff->write_entry);
	FUNC6(&ff->readdir.lock);
	FUNC7(&ff->count, 1);
	FUNC1(&ff->polled_node);
	FUNC3(&ff->poll_wait);

	ff->kh = FUNC2(&fc->khctr);

	return ff;
}