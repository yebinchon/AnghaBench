#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ fl_end; scalar_t__ fl_start; int /*<<< orphan*/  fl_pid; } ;
struct nlm_lock {TYPE_2__ fl; } ;
struct nlm_file {int /*<<< orphan*/  f_mutex; int /*<<< orphan*/  f_file; } ;
struct nlm_block {TYPE_6__* b_call; TYPE_3__* b_file; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_14__ {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_11__ {int /*<<< orphan*/  fl; } ;
struct TYPE_12__ {TYPE_4__ lock; } ;
struct TYPE_13__ {TYPE_5__ a_args; } ;
struct TYPE_10__ {int /*<<< orphan*/  f_file; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,long long) ; 
 scalar_t__ FUNC1 (struct net*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlm_granted ; 
 int /*<<< orphan*/  nlm_lck_denied ; 
 int /*<<< orphan*/  nlm_lck_denied_grace_period ; 
 struct nlm_block* FUNC5 (struct nlm_file*,struct nlm_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_block*) ; 
 int FUNC7 (struct nlm_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__be32
FUNC9(struct net *net, struct nlm_file *file, struct nlm_lock *lock)
{
	struct nlm_block	*block;
	int status = 0;

	FUNC0("lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\n",
				FUNC2(file->f_file)->i_sb->s_id,
				FUNC2(file->f_file)->i_ino,
				lock->fl.fl_pid,
				(long long)lock->fl.fl_start,
				(long long)lock->fl.fl_end);

	if (FUNC1(net))
		return nlm_lck_denied_grace_period;

	FUNC3(&file->f_mutex);
	block = FUNC5(file, lock);
	FUNC4(&file->f_mutex);
	if (block != NULL) {
		FUNC8(block->b_file->f_file,
				&block->b_call->a_args.lock.fl);
		status = FUNC7(block);
		FUNC6(block);
	}
	return status ? nlm_lck_denied : nlm_granted;
}