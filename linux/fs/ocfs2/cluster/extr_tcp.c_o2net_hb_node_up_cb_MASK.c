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
struct o2nm_node {int dummy; } ;
struct o2net_node {int /*<<< orphan*/  nn_lock; scalar_t__ nn_persistent_error; int /*<<< orphan*/  nn_timeout; scalar_t__ nn_last_connect_attempt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct o2net_node* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct o2nm_node *node, int node_num,
				void *data)
{
	struct o2net_node *nn = FUNC3(node_num);

	FUNC7(node_num);

	FUNC0(!node);

	/* ensure an immediate connect attempt */
	nn->nn_last_connect_attempt = jiffies -
		(FUNC2(FUNC4()) + 1);

	if (node_num != FUNC6()) {
		/* believe it or not, accept and node heartbeating testing
		 * can succeed for this node before we got here.. so
		 * only use set_nn_state to clear the persistent error
		 * if that hasn't already happened */
		FUNC8(&nn->nn_lock);
		FUNC1(&nn->nn_timeout, 0);
		if (nn->nn_persistent_error)
			FUNC5(nn, NULL, 0, 0);
		FUNC9(&nn->nn_lock);
	}
}