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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_idrinfo {int /*<<< orphan*/  lock; int /*<<< orphan*/  action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct tc_action_net *tn, u32 index)
{
	struct tcf_idrinfo *idrinfo = tn->idrinfo;

	FUNC3(&idrinfo->lock);
	/* Remove ERR_PTR(-EBUSY) allocated by tcf_idr_check_alloc */
	FUNC1(!FUNC0(FUNC2(&idrinfo->action_idr, index)));
	FUNC4(&idrinfo->lock);
}