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
struct vport_portids {int n_ids; int /*<<< orphan*/  ids; int /*<<< orphan*/  rn_ids; } ;
struct vport {int /*<<< orphan*/  upcall_portids; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vport_portids*,int /*<<< orphan*/ ) ; 
 struct vport_portids* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr const*,int) ; 
 struct vport_portids* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vport_portids*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct vport *vport, const struct nlattr *ids)
{
	struct vport_portids *old, *vport_portids;

	if (!FUNC2(ids) || FUNC2(ids) % sizeof(u32))
		return -EINVAL;

	old = FUNC4(vport->upcall_portids);

	vport_portids = FUNC1(sizeof(*vport_portids) + FUNC2(ids),
				GFP_KERNEL);
	if (!vport_portids)
		return -ENOMEM;

	vport_portids->n_ids = FUNC2(ids) / sizeof(u32);
	vport_portids->rn_ids = FUNC6(vport_portids->n_ids);
	FUNC3(vport_portids->ids, ids, FUNC2(ids));

	FUNC5(vport->upcall_portids, vport_portids);

	if (old)
		FUNC0(old, rcu);
	return 0;
}