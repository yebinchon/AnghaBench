#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  collisions; int /*<<< orphan*/  overlimit; int /*<<< orphan*/  flows; int /*<<< orphan*/  backlog_packets; int /*<<< orphan*/  backlog_bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  ecn_mark; int /*<<< orphan*/  drop_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  ac; } ;
struct txq_info {TYPE_4__ tin; TYPE_3__ cstats; TYPE_2__ txq; } ;
struct TYPE_6__ {int /*<<< orphan*/  txq; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct ieee80211_local {TYPE_5__ fq; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct txq_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(
	const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
	struct ieee80211_local *local = sdata->local;
	struct txq_info *txqi;
	int len;

	if (!sdata->vif.txq)
		return 0;

	txqi = FUNC5(sdata->vif.txq);

	FUNC3(&local->fq.lock);
	FUNC0();

	len = FUNC2(buf,
			buflen,
			"ac backlog-bytes backlog-packets new-flows drops marks overlimit collisions tx-bytes tx-packets\n"
			"%u %u %u %u %u %u %u %u %u %u\n",
			txqi->txq.ac,
			txqi->tin.backlog_bytes,
			txqi->tin.backlog_packets,
			txqi->tin.flows,
			txqi->cstats.drop_count,
			txqi->cstats.ecn_mark,
			txqi->tin.overlimit,
			txqi->tin.collisions,
			txqi->tin.tx_bytes,
			txqi->tin.tx_packets);

	FUNC1();
	FUNC4(&local->fq.lock);

	return len;
}