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
struct rds_ib_device {int /*<<< orphan*/  spinlock; } ;
struct rds_ib_connection {int /*<<< orphan*/ * rds_ibdev; int /*<<< orphan*/  ib_node; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_nodev_conns ; 
 int /*<<< orphan*/  ib_nodev_conns_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_ib_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct rds_ib_device *rds_ibdev, struct rds_connection *conn)
{
	struct rds_ib_connection *ic = conn->c_transport_data;

	/* place conn on nodev_conns_list */
	FUNC5(&ib_nodev_conns_lock);

	FUNC6(&rds_ibdev->spinlock);
	FUNC0(FUNC3(&ic->ib_node));
	FUNC2(&ic->ib_node);
	FUNC8(&rds_ibdev->spinlock);

	FUNC1(&ic->ib_node, &ib_nodev_conns);

	FUNC7(&ib_nodev_conns_lock);

	ic->rds_ibdev = NULL;
	FUNC4(rds_ibdev);
}