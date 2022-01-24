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
struct p9_conn {int /*<<< orphan*/  wsched; int /*<<< orphan*/  pt; int /*<<< orphan*/  poll_pending_link; int /*<<< orphan*/  wq; int /*<<< orphan*/  rq; int /*<<< orphan*/  unsent_req_list; int /*<<< orphan*/  req_list; struct p9_client* client; int /*<<< orphan*/  mux_list; } ;
struct p9_trans_fd {struct p9_conn conn; } ;
struct p9_client {int /*<<< orphan*/  msize; struct p9_trans_fd* trans; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  Rpending ; 
 int /*<<< orphan*/  Wpending ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct p9_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p9_pollwait ; 
 int /*<<< orphan*/  p9_read_work ; 
 int /*<<< orphan*/  p9_write_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct p9_client *client)
{
	__poll_t n;
	struct p9_trans_fd *ts = client->trans;
	struct p9_conn *m = &ts->conn;

	FUNC3(P9_DEBUG_TRANS, "client %p msize %d\n", client, client->msize);

	FUNC0(&m->mux_list);
	m->client = client;

	FUNC0(&m->req_list);
	FUNC0(&m->unsent_req_list);
	FUNC1(&m->rq, p9_read_work);
	FUNC1(&m->wq, p9_write_work);
	FUNC0(&m->poll_pending_link);
	FUNC2(&m->pt, p9_pollwait);

	n = FUNC4(client, &m->pt, NULL);
	if (n & EPOLLIN) {
		FUNC3(P9_DEBUG_TRANS, "mux %p can read\n", m);
		FUNC5(Rpending, &m->wsched);
	}

	if (n & EPOLLOUT) {
		FUNC3(P9_DEBUG_TRANS, "mux %p can write\n", m);
		FUNC5(Wpending, &m->wsched);
	}
}