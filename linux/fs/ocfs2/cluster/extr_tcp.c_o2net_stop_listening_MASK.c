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
struct socket {TYPE_1__* sk; } ;
struct o2nm_node {int /*<<< orphan*/  nd_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; int /*<<< orphan*/ * sk_data_ready; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_KTHREAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct o2nm_node*) ; 
 struct socket* o2net_listen_sock ; 
 int /*<<< orphan*/  o2net_nodes ; 
 int /*<<< orphan*/ * o2net_wq ; 
 struct o2nm_node* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct o2nm_node *node)
{
	struct socket *sock = o2net_listen_sock;
	size_t i;

	FUNC1(o2net_wq == NULL);
	FUNC1(o2net_listen_sock == NULL);

	/* stop the listening socket from generating work */
	FUNC9(&sock->sk->sk_callback_lock);
	sock->sk->sk_data_ready = sock->sk->sk_user_data;
	sock->sk->sk_user_data = NULL;
	FUNC10(&sock->sk->sk_callback_lock);

	for (i = 0; i < FUNC0(o2net_nodes); i++) {
		struct o2nm_node *node = FUNC5(i);
		if (node) {
			FUNC4(node);
			FUNC6(node);
		}
	}

	/* finish all work and tear down the work queue */
	FUNC3(ML_KTHREAD, "waiting for o2net thread to exit....\n");
	FUNC2(o2net_wq);
	o2net_wq = NULL;

	FUNC8(o2net_listen_sock);
	o2net_listen_sock = NULL;

	FUNC7(node->nd_num);
}