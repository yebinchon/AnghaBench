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
struct ieee80211_local {int dummy; } ;
struct ieee80211_chanctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 

int FUNC2(struct ieee80211_local *local,
			       struct ieee80211_chanctx *ctx)
{
	return FUNC0(local, ctx) +
	       FUNC1(local, ctx);
}