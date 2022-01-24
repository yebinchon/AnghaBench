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
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; } ;
struct ieee80211_chanctx {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_chanctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC6(struct ieee80211_local *local,
				   struct ieee80211_chanctx *ctx)
{
	FUNC5(&local->chanctx_mtx);

	FUNC0(FUNC1(local, ctx) != 0);

	FUNC4(&ctx->list);
	FUNC2(local, ctx);
	FUNC3(ctx, rcu_head);
}