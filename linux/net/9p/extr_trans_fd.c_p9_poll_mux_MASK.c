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
struct p9_conn {scalar_t__ err; int /*<<< orphan*/  wq; int /*<<< orphan*/  wsched; int /*<<< orphan*/  unsent_req_list; scalar_t__ wsize; int /*<<< orphan*/  rq; int /*<<< orphan*/  client; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int ECONNRESET ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLNVAL ; 
 int EPOLLOUT ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  Rpending ; 
 int /*<<< orphan*/  Rworksched ; 
 int /*<<< orphan*/  Wpending ; 
 int /*<<< orphan*/  Wworksched ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p9_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct p9_conn*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct p9_conn *m)
{
	__poll_t n;
	int err = -ECONNRESET;

	if (m->err < 0)
		return;

	n = FUNC3(m->client, NULL, &err);
	if (n & (EPOLLERR | EPOLLHUP | EPOLLNVAL)) {
		FUNC2(P9_DEBUG_TRANS, "error mux %p err %d\n", m, n);
		FUNC1(m, err);
	}

	if (n & EPOLLIN) {
		FUNC5(Rpending, &m->wsched);
		FUNC2(P9_DEBUG_TRANS, "mux %p can read\n", m);
		if (!FUNC6(Rworksched, &m->wsched)) {
			FUNC2(P9_DEBUG_TRANS, "sched read work %p\n", m);
			FUNC4(&m->rq);
		}
	}

	if (n & EPOLLOUT) {
		FUNC5(Wpending, &m->wsched);
		FUNC2(P9_DEBUG_TRANS, "mux %p can write\n", m);
		if ((m->wsize || !FUNC0(&m->unsent_req_list)) &&
		    !FUNC6(Wworksched, &m->wsched)) {
			FUNC2(P9_DEBUG_TRANS, "sched write work %p\n", m);
			FUNC4(&m->wq);
		}
	}
}