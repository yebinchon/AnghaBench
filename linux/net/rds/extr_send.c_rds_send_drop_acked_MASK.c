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
typedef  int /*<<< orphan*/  u64 ;
struct rds_connection {int /*<<< orphan*/ * c_path; TYPE_1__* c_trans; } ;
typedef  int /*<<< orphan*/  is_acked_func ;
struct TYPE_2__ {int /*<<< orphan*/  t_mp_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct rds_connection *conn, u64 ack,
			 is_acked_func is_acked)
{
	FUNC0(conn->c_trans->t_mp_capable);
	FUNC1(&conn->c_path[0], ack, is_acked);
}