#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_qrtr {int sq_port; int /*<<< orphan*/  sq_node; int /*<<< orphan*/  sq_family; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int sq_port; int sq_node; } ;
struct qrtr_sock {int /*<<< orphan*/  sk; TYPE_2__ us; } ;
struct TYPE_3__ {void* port; void* node; } ;
struct qrtr_ctrl_pkt {TYPE_1__ client; void* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 int /*<<< orphan*/  QRTR_NODE_BCAST ; 
 int QRTR_PORT_CTRL ; 
 int QRTR_TYPE_DEL_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (struct qrtr_ctrl_pkt**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*,int,TYPE_2__*,struct sockaddr_qrtr*) ; 
 int /*<<< orphan*/  qrtr_port_lock ; 
 int /*<<< orphan*/  qrtr_ports ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct qrtr_sock *ipc)
{
	struct qrtr_ctrl_pkt *pkt;
	struct sk_buff *skb;
	int port = ipc->us.sq_port;
	struct sockaddr_qrtr to;

	to.sq_family = AF_QIPCRTR;
	to.sq_node = QRTR_NODE_BCAST;
	to.sq_port = QRTR_PORT_CTRL;

	skb = FUNC5(&pkt);
	if (skb) {
		pkt->cmd = FUNC1(QRTR_TYPE_DEL_CLIENT);
		pkt->client.node = FUNC1(ipc->us.sq_node);
		pkt->client.port = FUNC1(ipc->us.sq_port);

		FUNC7(skb, &ipc->sk);
		FUNC6(NULL, skb, QRTR_TYPE_DEL_CLIENT, &ipc->us,
				   &to);
	}

	if (port == QRTR_PORT_CTRL)
		port = 0;

	FUNC0(&ipc->sk);

	FUNC3(&qrtr_port_lock);
	FUNC2(&qrtr_ports, port);
	FUNC4(&qrtr_port_lock);
}