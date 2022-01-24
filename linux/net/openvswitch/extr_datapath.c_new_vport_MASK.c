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
struct vport_parms {struct datapath* dp; } ;
struct vport {int /*<<< orphan*/  dp_hash_node; int /*<<< orphan*/  port_no; } ;
struct hlist_head {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct vport* FUNC2 (struct vport_parms const*) ; 
 struct hlist_head* FUNC3 (struct datapath*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vport *FUNC4(const struct vport_parms *parms)
{
	struct vport *vport;

	vport = FUNC2(parms);
	if (!FUNC0(vport)) {
		struct datapath *dp = parms->dp;
		struct hlist_head *head = FUNC3(dp, vport->port_no);

		FUNC1(&vport->dp_hash_node, head);
	}
	return vport;
}