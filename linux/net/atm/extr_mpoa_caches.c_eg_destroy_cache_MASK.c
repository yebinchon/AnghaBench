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
struct mpoa_client {int /*<<< orphan*/  egress_lock; int /*<<< orphan*/ * eg_cache; TYPE_1__* eg_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove_entry ) (int /*<<< orphan*/ *,struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mpoa_client *mpc)
{
	FUNC1(&mpc->egress_lock);
	while (mpc->eg_cache != NULL)
		mpc->eg_ops->remove_entry(mpc->eg_cache, mpc);
	FUNC2(&mpc->egress_lock);
}