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
struct TYPE_2__ {int /*<<< orphan*/  unit; } ;
struct cmp_connection {TYPE_1__ resources; } ;
typedef  int __be32 ;

/* Variables and functions */
 int PCR_BCAST_CONN ; 
 int PCR_P2P_CONN_MASK ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cmp_connection*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct cmp_connection *c, bool *used)
{
	__be32 pcr;
	int err;

	err = FUNC2(
			c->resources.unit, TCODE_READ_QUADLET_REQUEST,
			FUNC1(c), &pcr, 4, 0);
	if (err >= 0)
		*used = !!(pcr & FUNC0(PCR_BCAST_CONN |
					     PCR_P2P_CONN_MASK));

	return err;
}