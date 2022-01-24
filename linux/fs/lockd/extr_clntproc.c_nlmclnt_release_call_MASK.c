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
struct nlmclnt_operations {int /*<<< orphan*/  (* nlmclnt_release_call ) (int /*<<< orphan*/ ) ;} ;
struct nlm_rqst {TYPE_1__* a_host; int /*<<< orphan*/  a_callback_data; int /*<<< orphan*/  a_count; } ;
struct TYPE_2__ {struct nlmclnt_operations* h_nlmclnt_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct nlm_rqst *call)
{
	const struct nlmclnt_operations *nlmclnt_ops = call->a_host->h_nlmclnt_ops;

	if (!FUNC3(&call->a_count))
		return;
	if (nlmclnt_ops && nlmclnt_ops->nlmclnt_release_call)
		nlmclnt_ops->nlmclnt_release_call(call->a_callback_data);
	FUNC1(call->a_host);
	FUNC2(call);
	FUNC0(call);
}