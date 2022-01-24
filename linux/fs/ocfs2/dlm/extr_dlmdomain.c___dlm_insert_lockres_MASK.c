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
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct dlm_lock_resource {TYPE_1__ lockname; int /*<<< orphan*/  hash_node; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 struct hlist_head* FUNC2 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	struct hlist_head *bucket;

	FUNC0(&dlm->spinlock);

	bucket = FUNC2(dlm, res->lockname.hash);

	/* get a reference for our hashtable */
	FUNC1(res);

	FUNC3(&res->hash_node, bucket);

	FUNC4(0, "%s: Hash res %.*s\n", dlm->name, res->lockname.len,
	     res->lockname.name);
}