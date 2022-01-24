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
typedef  int u8 ;
struct smc_ib_device {int /*<<< orphan*/ * mac; int /*<<< orphan*/  ibdev; } ;
struct ib_gid_attr {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 struct ib_gid_attr* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_gid_attr const*) ; 
 int FUNC3 (struct ib_gid_attr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct smc_ib_device *smcibdev, u8 ibport)
{
	const struct ib_gid_attr *attr;
	int rc;

	attr = FUNC1(smcibdev->ibdev, ibport, 0);
	if (FUNC0(attr))
		return -ENODEV;

	rc = FUNC3(attr, NULL, smcibdev->mac[ibport - 1]);
	FUNC2(attr);
	return rc;
}