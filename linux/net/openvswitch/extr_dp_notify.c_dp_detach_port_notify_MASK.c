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
struct vport {struct datapath* dp; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_DEL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  dp_vport_genl_family ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct datapath*) ; 
 struct sk_buff* FUNC6 (struct vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct vport *vport)
{
	struct sk_buff *notify;
	struct datapath *dp;

	dp = vport->dp;
	notify = FUNC6(vport, FUNC5(dp),
					  0, 0, OVS_VPORT_CMD_DEL);
	FUNC4(vport);
	if (FUNC0(notify)) {
		FUNC2(&dp_vport_genl_family, FUNC5(dp), 0,
			     0, FUNC1(notify));
		return;
	}

	FUNC3(&dp_vport_genl_family,
				FUNC5(dp), notify, 0,
				0, GFP_KERNEL);
}