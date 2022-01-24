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
struct rds_ib_connection {int /*<<< orphan*/  i_recv_tasklet; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rds_connection*,struct ib_cq*) ; 
 int /*<<< orphan*/  s_ib_evt_handler_call ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ib_cq *cq, void *context)
{
	struct rds_connection *conn = context;
	struct rds_ib_connection *ic = conn->c_transport_data;

	FUNC1("conn %p cq %p\n", conn, cq);

	FUNC0(s_ib_evt_handler_call);

	FUNC2(&ic->i_recv_tasklet);
}