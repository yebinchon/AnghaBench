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
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QRTR_MAX_EPH_SOCKET ; 
 int QRTR_MIN_EPH_SOCKET ; 
 int QRTR_PORT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct qrtr_sock*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qrtr_port_lock ; 
 int /*<<< orphan*/  qrtr_ports ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qrtr_sock *ipc, int *port)
{
	int rc;

	FUNC2(&qrtr_port_lock);
	if (!*port) {
		rc = FUNC1(&qrtr_ports, ipc,
			       QRTR_MIN_EPH_SOCKET, QRTR_MAX_EPH_SOCKET + 1,
			       GFP_ATOMIC);
		if (rc >= 0)
			*port = rc;
	} else if (*port < QRTR_MIN_EPH_SOCKET && !FUNC0(CAP_NET_ADMIN)) {
		rc = -EACCES;
	} else if (*port == QRTR_PORT_CTRL) {
		rc = FUNC1(&qrtr_ports, ipc, 0, 1, GFP_ATOMIC);
	} else {
		rc = FUNC1(&qrtr_ports, ipc, *port, *port + 1, GFP_ATOMIC);
		if (rc >= 0)
			*port = rc;
	}
	FUNC3(&qrtr_port_lock);

	if (rc == -ENOSPC)
		return -EADDRINUSE;
	else if (rc < 0)
		return rc;

	FUNC4(&ipc->sk);

	return 0;
}