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
struct TYPE_2__ {int /*<<< orphan*/  rx_tstamp; scalar_t__ rdma_cookie; } ;
struct in6_addr {int dummy; } ;
struct rds_incoming {int /*<<< orphan*/  i_rx_lat_trace; TYPE_1__ i_usercopy; struct in6_addr i_saddr; struct rds_connection* i_conn; int /*<<< orphan*/  i_item; int /*<<< orphan*/  i_refcount; } ;
struct rds_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct rds_incoming *inc, struct rds_connection *conn,
		 struct in6_addr *saddr)
{
	FUNC3(&inc->i_refcount, 1);
	FUNC0(&inc->i_item);
	inc->i_conn = conn;
	inc->i_saddr = *saddr;
	inc->i_usercopy.rdma_cookie = 0;
	inc->i_usercopy.rx_tstamp = FUNC1(0, 0);

	FUNC2(inc->i_rx_lat_trace, 0, sizeof(inc->i_rx_lat_trace));
}