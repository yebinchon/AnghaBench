#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  committed; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct nfs_direct_req {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; TYPE_1__ verf; TYPE_2__ mds_cinfo; int /*<<< orphan*/  completion; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_INVALID_STABLE_HOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs_direct_req* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_direct_cachep ; 
 int /*<<< orphan*/  nfs_direct_write_schedule_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct nfs_direct_req *FUNC7(void)
{
	struct nfs_direct_req *dreq;

	dreq = FUNC3(nfs_direct_cachep, GFP_KERNEL);
	if (!dreq)
		return NULL;

	FUNC5(&dreq->kref);
	FUNC4(&dreq->kref);
	FUNC2(&dreq->completion);
	FUNC0(&dreq->mds_cinfo.list);
	dreq->verf.committed = NFS_INVALID_STABLE_HOW;	/* not set yet */
	FUNC1(&dreq->work, nfs_direct_write_schedule_work);
	FUNC6(&dreq->lock);

	return dreq;
}