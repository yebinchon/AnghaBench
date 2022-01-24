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
struct TYPE_7__ {int /*<<< orphan*/  fl; } ;
struct TYPE_8__ {TYPE_3__ lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  fl; } ;
struct TYPE_6__ {TYPE_1__ lock; } ;
struct nlm_rqst {int /*<<< orphan*/  a_host; TYPE_4__ a_res; TYPE_2__ a_args; int /*<<< orphan*/  a_count; } ;
struct nlm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 struct nlm_rqst* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 

struct nlm_rqst *FUNC7(struct nlm_host *host)
{
	struct nlm_rqst	*call;

	for(;;) {
		call = FUNC0(sizeof(*call), GFP_KERNEL);
		if (call != NULL) {
			FUNC4(&call->a_count, 1);
			FUNC1(&call->a_args.lock.fl);
			FUNC1(&call->a_res.lock.fl);
			call->a_host = FUNC2(host);
			return call;
		}
		if (FUNC6())
			break;
		FUNC3("nlm_alloc_call: failed, waiting for memory\n");
		FUNC5(5*HZ);
	}
	return NULL;
}