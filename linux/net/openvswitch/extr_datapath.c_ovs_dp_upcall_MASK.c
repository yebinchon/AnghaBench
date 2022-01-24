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
typedef  int /*<<< orphan*/  uint32_t ;
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {scalar_t__ portid; } ;
struct dp_stats_percpu {int /*<<< orphan*/  syncp; int /*<<< orphan*/  n_lost; } ;
struct datapath {int /*<<< orphan*/  stats_percpu; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int FUNC0 (struct datapath*,struct sk_buff*,struct sw_flow_key const*,struct dp_upcall_info const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct datapath*,struct sk_buff*,struct sw_flow_key const*,struct dp_upcall_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct dp_stats_percpu* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct datapath *dp, struct sk_buff *skb,
		  const struct sw_flow_key *key,
		  const struct dp_upcall_info *upcall_info,
		  uint32_t cutlen)
{
	struct dp_stats_percpu *stats;
	int err;

	if (upcall_info->portid == 0) {
		err = -ENOTCONN;
		goto err;
	}

	if (!FUNC2(skb))
		err = FUNC1(dp, skb, key, upcall_info, cutlen);
	else
		err = FUNC0(dp, skb, key, upcall_info, cutlen);
	if (err)
		goto err;

	return 0;

err:
	stats = FUNC3(dp->stats_percpu);

	FUNC4(&stats->syncp);
	stats->n_lost++;
	FUNC5(&stats->syncp);

	return err;
}