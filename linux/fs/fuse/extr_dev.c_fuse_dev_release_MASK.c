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
struct fuse_pqueue {int /*<<< orphan*/  lock; int /*<<< orphan*/ * processing; int /*<<< orphan*/  io; } ;
struct fuse_dev {struct fuse_pqueue pq; struct fuse_conn* fc; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fasync; } ;
struct fuse_conn {TYPE_1__ iq; int /*<<< orphan*/  dev_count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int FUSE_PQ_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dev*) ; 
 struct fuse_dev* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  to_end ; 

int FUNC11(struct inode *inode, struct file *file)
{
	struct fuse_dev *fud = FUNC6(file);

	if (fud) {
		struct fuse_conn *fc = fud->fc;
		struct fuse_pqueue *fpq = &fud->pq;
		FUNC0(to_end);
		unsigned int i;

		FUNC9(&fpq->lock);
		FUNC1(!FUNC7(&fpq->io));
		for (i = 0; i < FUSE_PQ_HASH_SIZE; i++)
			FUNC8(&fpq->processing[i], &to_end);
		FUNC10(&fpq->lock);

		FUNC3(fc, &to_end);

		/* Are we the last open device? */
		if (FUNC2(&fc->dev_count)) {
			FUNC1(fc->iq.fasync != NULL);
			FUNC4(fc);
		}
		FUNC5(fud);
	}
	return 0;
}