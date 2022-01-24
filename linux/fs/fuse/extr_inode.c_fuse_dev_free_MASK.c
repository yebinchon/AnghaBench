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
struct TYPE_2__ {struct fuse_dev* processing; } ;
struct fuse_dev {TYPE_1__ pq; int /*<<< orphan*/  entry; struct fuse_conn* fc; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fuse_dev *fud)
{
	struct fuse_conn *fc = fud->fc;

	if (fc) {
		FUNC3(&fc->lock);
		FUNC2(&fud->entry);
		FUNC4(&fc->lock);

		FUNC0(fc);
	}
	FUNC1(fud->pq.processing);
	FUNC1(fud);
}