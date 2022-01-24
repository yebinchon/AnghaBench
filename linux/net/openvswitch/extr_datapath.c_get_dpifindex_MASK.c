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
struct vport {TYPE_1__* dev; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVSP_LOCAL ; 
 struct vport* FUNC0 (struct datapath const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(const struct datapath *dp)
{
	struct vport *local;
	int ifindex;

	FUNC1();

	local = FUNC0(dp, OVSP_LOCAL);
	if (local)
		ifindex = local->dev->ifindex;
	else
		ifindex = 0;

	FUNC2();

	return ifindex;
}