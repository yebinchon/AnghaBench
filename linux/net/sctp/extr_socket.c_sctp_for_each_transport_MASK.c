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
typedef  struct sctp_transport sctp_transport ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_transport*) ; 
 struct sctp_transport* FUNC1 (struct net*,struct rhashtable_iter*,int) ; 
 struct sctp_transport* FUNC2 (struct net*,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC4 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct rhashtable_iter*) ; 

int FUNC6(int (*cb)(struct sctp_transport *, void *),
			    int (*cb_done)(struct sctp_transport *, void *),
			    struct net *net, int *pos, void *p) {
	struct rhashtable_iter hti;
	struct sctp_transport *tsp;
	int ret;

again:
	ret = 0;
	FUNC4(&hti);

	tsp = FUNC1(net, &hti, *pos + 1);
	for (; !FUNC0(tsp); tsp = FUNC2(net, &hti)) {
		ret = cb(tsp, p);
		if (ret)
			break;
		(*pos)++;
		FUNC3(tsp);
	}
	FUNC5(&hti);

	if (ret) {
		if (cb_done && !cb_done(tsp, p)) {
			(*pos)++;
			FUNC3(tsp);
			goto again;
		}
		FUNC3(tsp);
	}

	return ret;
}