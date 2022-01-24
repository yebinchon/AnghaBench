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
typedef  void* u32 ;
struct tipc_sock_conn {int /*<<< orphan*/  list; void* peer_port; void* port; void* peer_node; } ;
struct tipc_node {int /*<<< orphan*/  conn_sks; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct net*,void*) ; 
 struct tipc_sock_conn* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 struct tipc_node* FUNC4 (struct net*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_node*) ; 

int FUNC8(struct net *net, u32 dnode, u32 port, u32 peer_port)
{
	struct tipc_node *node;
	struct tipc_sock_conn *conn;
	int err = 0;

	if (FUNC0(net, dnode))
		return 0;

	node = FUNC4(net, dnode);
	if (!node) {
		FUNC3("Connecting sock to node 0x%x failed\n", dnode);
		return -EHOSTUNREACH;
	}
	conn = FUNC1(sizeof(*conn), GFP_ATOMIC);
	if (!conn) {
		err = -EHOSTUNREACH;
		goto exit;
	}
	conn->peer_node = dnode;
	conn->port = port;
	conn->peer_port = peer_port;

	FUNC6(node);
	FUNC2(&conn->list, &node->conn_sks);
	FUNC7(node);
exit:
	FUNC5(node);
	return err;
}