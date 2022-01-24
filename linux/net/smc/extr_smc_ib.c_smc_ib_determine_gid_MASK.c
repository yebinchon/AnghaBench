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
typedef  int u8 ;
struct smc_ib_device {int /*<<< orphan*/  ibdev; TYPE_1__* pattr; } ;
struct net_device {scalar_t__ gid_type; int index; int /*<<< orphan*/  gid; int /*<<< orphan*/  ndev; } ;
struct ib_gid_attr {scalar_t__ gid_type; int index; int /*<<< orphan*/  gid; int /*<<< orphan*/  ndev; } ;
struct TYPE_2__ {int gid_tbl_len; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ IB_GID_TYPE_ROCE ; 
 scalar_t__ FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  SMC_GID_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device const*) ; 
 struct net_device* FUNC7 (struct net_device const*) ; 
 unsigned short FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct smc_ib_device *smcibdev, u8 ibport,
			 unsigned short vlan_id, u8 gid[], u8 *sgid_index)
{
	const struct ib_gid_attr *attr;
	const struct net_device *ndev;
	int i;

	for (i = 0; i < smcibdev->pattr[ibport - 1].gid_tbl_len; i++) {
		attr = FUNC5(smcibdev->ibdev, ibport, i);
		if (FUNC0(attr))
			continue;

		FUNC3();
		ndev = FUNC7(attr);
		if (!FUNC0(ndev) &&
		    ((!vlan_id && !FUNC1(attr->ndev)) ||
		     (vlan_id && FUNC1(attr->ndev) &&
		      FUNC8(attr->ndev) == vlan_id)) &&
		    attr->gid_type == IB_GID_TYPE_ROCE) {
			FUNC4();
			if (gid)
				FUNC2(gid, &attr->gid, SMC_GID_SIZE);
			if (sgid_index)
				*sgid_index = attr->index;
			FUNC6(attr);
			return 0;
		}
		FUNC4();
		FUNC6(attr);
	}
	return -ENODEV;
}