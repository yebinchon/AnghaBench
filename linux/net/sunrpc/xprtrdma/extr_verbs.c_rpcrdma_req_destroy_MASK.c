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
struct rpcrdma_req {int /*<<< orphan*/  rl_rdmabuf; int /*<<< orphan*/  rl_sendbuf; int /*<<< orphan*/  rl_recvbuf; int /*<<< orphan*/  rl_free_mrs; int /*<<< orphan*/  rl_all; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct rpcrdma_req *req)
{
	FUNC1(&req->rl_all);

	while (!FUNC2(&req->rl_free_mrs))
		FUNC3(FUNC4(&req->rl_free_mrs));

	FUNC5(req->rl_recvbuf);
	FUNC5(req->rl_sendbuf);
	FUNC5(req->rl_rdmabuf);
	FUNC0(req);
}