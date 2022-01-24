#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nlmclnt_operations {int /*<<< orphan*/  (* nlmclnt_alloc_call ) (void*) ;} ;
struct TYPE_7__ {int block; } ;
struct nlm_rqst {TYPE_3__ a_args; void* a_callback_data; } ;
struct nlm_host {struct nlmclnt_operations* h_nlmclnt_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {TYPE_1__ nfs_fl; } ;
struct file_lock {scalar_t__ fl_type; TYPE_4__* fl_ops; TYPE_2__ fl_u; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* fl_release_private ) (struct file_lock*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ F_UNLCK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct nlm_rqst* FUNC4 (struct nlm_host*) ; 
 int FUNC5 (struct nlm_rqst*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct file_lock*,struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlm_rqst*,struct file_lock*) ; 
 int FUNC9 (struct nlm_rqst*,struct file_lock*) ; 
 int FUNC10 (struct nlm_rqst*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct file_lock*) ; 

int FUNC13(struct nlm_host *host, int cmd, struct file_lock *fl, void *data)
{
	struct nlm_rqst		*call;
	int			status;
	const struct nlmclnt_operations *nlmclnt_ops = host->h_nlmclnt_ops;

	call = FUNC4(host);
	if (call == NULL)
		return -ENOMEM;

	if (nlmclnt_ops && nlmclnt_ops->nlmclnt_alloc_call)
		nlmclnt_ops->nlmclnt_alloc_call(data);

	FUNC6(fl, host);
	if (!fl->fl_u.nfs_fl.owner) {
		/* lockowner allocation has failed */
		FUNC7(call);
		return -ENOMEM;
	}
	/* Set up the argument struct */
	FUNC8(call, fl);
	call->a_callback_data = data;

	if (FUNC1(cmd) || FUNC2(cmd)) {
		if (fl->fl_type != F_UNLCK) {
			call->a_args.block = FUNC2(cmd) ? 1 : 0;
			status = FUNC5(call, fl);
		} else
			status = FUNC10(call, fl);
	} else if (FUNC0(cmd))
		status = FUNC9(call, fl);
	else
		status = -EINVAL;
	fl->fl_ops->fl_release_private(fl);
	fl->fl_ops = NULL;

	FUNC3("lockd: clnt proc returns %d\n", status);
	return status;
}