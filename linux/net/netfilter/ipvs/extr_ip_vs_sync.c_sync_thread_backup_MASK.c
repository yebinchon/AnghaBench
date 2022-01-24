#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sync_maxlen; int /*<<< orphan*/  syncid; int /*<<< orphan*/  mcast_ifn; } ;
struct netns_ipvs {TYPE_1__ bcfg; } ;
struct ip_vs_sync_thread_data {int /*<<< orphan*/  buf; TYPE_3__* sock; int /*<<< orphan*/  id; struct netns_ipvs* ipvs; } ;
struct TYPE_6__ {TYPE_2__* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct netns_ipvs*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct ip_vs_sync_thread_data *tinfo = data;
	struct netns_ipvs *ipvs = tinfo->ipvs;
	int len;

	FUNC4("sync thread started: state = BACKUP, mcast_ifn = %s, "
		"syncid = %d, id = %d\n",
		ipvs->bcfg.mcast_ifn, ipvs->bcfg.syncid, tinfo->id);

	while (!FUNC2()) {
		FUNC7(*FUNC5(tinfo->sock->sk),
			 !FUNC6(&tinfo->sock->sk->sk_receive_queue)
			 || FUNC2());

		/* do we have data now? */
		while (!FUNC6(&(tinfo->sock->sk->sk_receive_queue))) {
			len = FUNC1(tinfo->sock, tinfo->buf,
					ipvs->bcfg.sync_maxlen);
			if (len <= 0) {
				if (len != -EAGAIN)
					FUNC3("receiving message error\n");
				break;
			}

			FUNC0(ipvs, tinfo->buf, len);
		}
	}

	return 0;
}