#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  fl; TYPE_1__ oh; } ;
struct TYPE_6__ {TYPE_2__ lock; } ;
struct nlm_rqst {scalar_t__ a_owner; TYPE_3__ a_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nlm_rqst *call)
{
	if (call->a_args.lock.oh.data != call->a_owner)
		FUNC0(call->a_args.lock.oh.data);

	FUNC1(&call->a_args.lock.fl);
}