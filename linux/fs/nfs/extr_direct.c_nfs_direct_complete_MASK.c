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
struct nfs_direct_req {scalar_t__ count; int /*<<< orphan*/  completion; TYPE_1__* iocb; scalar_t__ error; struct inode* inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ki_complete ) (TYPE_1__*,long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_direct_req*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfs_direct_req *dreq)
{
	struct inode *inode = dreq->inode;

	FUNC2(inode);

	if (dreq->iocb) {
		long res = (long) dreq->error;
		if (dreq->count != 0) {
			res = (long) dreq->count;
			FUNC0(dreq->count < 0);
		}
		dreq->iocb->ki_complete(dreq->iocb, res, 0);
	}

	FUNC1(&dreq->completion);

	FUNC3(dreq);
}