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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
struct TYPE_5__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct ieee80211_chanctx_conf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_sub_if_data *sdata,
					struct sk_buff *skb, int tid)
{
	struct ieee80211_chanctx_conf *chanctx_conf;

	FUNC4();
	chanctx_conf = FUNC3(sdata->vif.chanctx_conf);
	if (FUNC0(!chanctx_conf)) {
		FUNC5();
		FUNC2(skb);
		return;
	}

	FUNC1(sdata, skb, tid,
				    chanctx_conf->def.chan->band, 0);
	FUNC5();
}