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
struct qrtr_sock {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int QRTR_PORT_CTRL ; 
 struct qrtr_sock* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qrtr_port_lock ; 
 int /*<<< orphan*/  qrtr_ports ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct qrtr_sock *FUNC4(int port)
{
	struct qrtr_sock *ipc;

	if (port == QRTR_PORT_CTRL)
		port = 0;

	FUNC1(&qrtr_port_lock);
	ipc = FUNC0(&qrtr_ports, port);
	if (ipc)
		FUNC3(&ipc->sk);
	FUNC2(&qrtr_port_lock);

	return ipc;
}