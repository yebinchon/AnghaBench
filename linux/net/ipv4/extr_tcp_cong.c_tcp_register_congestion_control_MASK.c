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
struct tcp_congestion_ops {scalar_t__ key; int /*<<< orphan*/  name; int /*<<< orphan*/  list; scalar_t__ cong_control; scalar_t__ cong_avoid; int /*<<< orphan*/  undo_cwnd; int /*<<< orphan*/  ssthresh; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ TCP_CA_UNSPEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  tcp_cong_list ; 
 int /*<<< orphan*/  tcp_cong_list_lock ; 

int FUNC9(struct tcp_congestion_ops *ca)
{
	int ret = 0;

	/* all algorithms must implement these */
	if (!ca->ssthresh || !ca->undo_cwnd ||
	    !(ca->cong_avoid || ca->cong_control)) {
		FUNC3("%s does not implement required ops\n", ca->name);
		return -EINVAL;
	}

	ca->key = FUNC0(ca->name, sizeof(ca->name), FUNC7(ca->name));

	FUNC5(&tcp_cong_list_lock);
	if (ca->key == TCP_CA_UNSPEC || FUNC8(ca->key)) {
		FUNC4("%s already registered or non-unique key\n",
			  ca->name);
		ret = -EEXIST;
	} else {
		FUNC1(&ca->list, &tcp_cong_list);
		FUNC2("%s registered\n", ca->name);
	}
	FUNC6(&tcp_cong_list_lock);

	return ret;
}