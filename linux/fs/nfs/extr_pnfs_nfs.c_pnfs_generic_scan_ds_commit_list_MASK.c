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
struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/ * wlseg; int /*<<< orphan*/ * clseg; struct list_head committing; struct list_head written; } ;
struct nfs_commit_info {TYPE_1__* ds; int /*<<< orphan*/  inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_3__ {int nwritten; int ncommitting; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct list_head*,struct list_head*,struct nfs_commit_info*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct pnfs_commit_bucket *bucket,
				 struct nfs_commit_info *cinfo,
				 int max)
{
	struct list_head *src = &bucket->written;
	struct list_head *dst = &bucket->committing;
	int ret;

	FUNC2(&FUNC0(cinfo->inode)->commit_mutex);
	ret = FUNC3(src, dst, cinfo, max);
	if (ret) {
		cinfo->ds->nwritten -= ret;
		cinfo->ds->ncommitting += ret;
		if (bucket->clseg == NULL)
			bucket->clseg = FUNC4(bucket->wlseg);
		if (FUNC1(src)) {
			FUNC5(bucket->wlseg);
			bucket->wlseg = NULL;
		}
	}
	return ret;
}