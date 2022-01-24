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
struct TYPE_3__ {int /*<<< orphan*/  cpuset_mems_allowed; } ;
struct mempolicy {int flags; size_t mode; TYPE_1__ w; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* rebind ) (struct mempolicy*,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int MPOL_F_LOCAL ; 
 TYPE_2__* mpol_ops ; 
 int /*<<< orphan*/  FUNC0 (struct mempolicy*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (struct mempolicy*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(struct mempolicy *pol, const nodemask_t *newmask)
{
	if (!pol)
		return;
	if (!FUNC0(pol) && !(pol->flags & MPOL_F_LOCAL) &&
	    FUNC1(pol->w.cpuset_mems_allowed, *newmask))
		return;

	mpol_ops[pol->mode].rebind(pol, newmask);
}