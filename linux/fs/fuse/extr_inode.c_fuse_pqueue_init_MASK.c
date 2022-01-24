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
struct fuse_pqueue {int connected; int /*<<< orphan*/  io; int /*<<< orphan*/ * processing; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUSE_PQ_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fuse_pqueue *fpq)
{
	unsigned int i;

	FUNC1(&fpq->lock);
	for (i = 0; i < FUSE_PQ_HASH_SIZE; i++)
		FUNC0(&fpq->processing[i]);
	FUNC0(&fpq->io);
	fpq->connected = 1;
}