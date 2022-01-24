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
struct TYPE_2__ {int cid; } ;
struct rxrpc_connection {TYPE_1__ proto; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int RXRPC_CIDSHIFT ; 
 int /*<<< orphan*/  RXRPC_CONN_HAS_IDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rxrpc_client_conn_ids ; 
 int /*<<< orphan*/  rxrpc_conn_id_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rxrpc_connection *conn)
{
	if (FUNC3(RXRPC_CONN_HAS_IDR, &conn->flags)) {
		FUNC1(&rxrpc_conn_id_lock);
		FUNC0(&rxrpc_client_conn_ids,
			   conn->proto.cid >> RXRPC_CIDSHIFT);
		FUNC2(&rxrpc_conn_id_lock);
	}
}