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
struct file {int f_mode; struct cache_reader* private_data; } ;
struct TYPE_2__ {int reader; int /*<<< orphan*/  list; } ;
struct cache_reader {TYPE_1__ q; scalar_t__ offset; } ;
struct cache_detail {int /*<<< orphan*/  writers; int /*<<< orphan*/  queue; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cache_reader* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  queue_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp,
		      struct cache_detail *cd)
{
	struct cache_reader *rp = NULL;

	if (!cd || !FUNC7(cd->owner))
		return -EACCES;
	FUNC4(inode, filp);
	if (filp->f_mode & FMODE_READ) {
		rp = FUNC1(sizeof(*rp), GFP_KERNEL);
		if (!rp) {
			FUNC3(cd->owner);
			return -ENOMEM;
		}
		rp->offset = 0;
		rp->q.reader = 1;

		FUNC5(&queue_lock);
		FUNC2(&rp->q.list, &cd->queue);
		FUNC6(&queue_lock);
	}
	if (filp->f_mode & FMODE_WRITE)
		FUNC0(&cd->writers);
	filp->private_data = rp;
	return 0;
}