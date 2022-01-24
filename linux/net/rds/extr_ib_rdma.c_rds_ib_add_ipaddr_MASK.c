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
struct rds_ib_ipaddr {int /*<<< orphan*/  list; int /*<<< orphan*/  ipaddr; } ;
struct rds_ib_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  ipaddr_list; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rds_ib_ipaddr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rds_ib_device *rds_ibdev, __be32 ipaddr)
{
	struct rds_ib_ipaddr *i_ipaddr;

	i_ipaddr = FUNC0(sizeof *i_ipaddr, GFP_KERNEL);
	if (!i_ipaddr)
		return -ENOMEM;

	i_ipaddr->ipaddr = ipaddr;

	FUNC2(&rds_ibdev->spinlock);
	FUNC1(&i_ipaddr->list, &rds_ibdev->ipaddr_list);
	FUNC3(&rds_ibdev->spinlock);

	return 0;
}