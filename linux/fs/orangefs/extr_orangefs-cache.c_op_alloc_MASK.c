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
struct TYPE_4__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; void* type; } ;
struct TYPE_3__ {int status; void* type; } ;
struct orangefs_kernel_op_s {TYPE_2__ upcall; int /*<<< orphan*/  tag; scalar_t__ attempts; int /*<<< orphan*/  op_state; TYPE_1__ downcall; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
typedef  void* __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GOSSIP_CACHE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OP_VFS_STATE_UNKNOWN ; 
 void* ORANGEFS_VFS_OP_INVALID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct orangefs_kernel_op_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct orangefs_kernel_op_s* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  op_cache ; 
 int /*<<< orphan*/  FUNC11 (struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct orangefs_kernel_op_s *FUNC13(__s32 type)
{
	struct orangefs_kernel_op_s *new_op = NULL;

	new_op = FUNC9(op_cache, GFP_KERNEL);
	if (new_op) {
		FUNC0(&new_op->list);
		FUNC12(&new_op->lock);
		FUNC8(&new_op->waitq);

		new_op->upcall.type = ORANGEFS_VFS_OP_INVALID;
		new_op->downcall.type = ORANGEFS_VFS_OP_INVALID;
		new_op->downcall.status = -1;

		new_op->op_state = OP_VFS_STATE_UNKNOWN;

		/* initialize the op specific tag and upcall credentials */
		FUNC11(new_op);
		new_op->upcall.type = type;
		new_op->attempts = 0;
		FUNC6(GOSSIP_CACHE_DEBUG,
			     "Alloced OP (%p: %llu %s)\n",
			     new_op,
			     FUNC10(new_op->tag),
			     FUNC5(new_op));

		new_op->upcall.uid = FUNC4(&init_user_ns,
					       FUNC2());

		new_op->upcall.gid = FUNC3(&init_user_ns,
					       FUNC1());
	} else {
		FUNC7("op_alloc: kmem_cache_zalloc failed!\n");
	}
	return new_op;
}