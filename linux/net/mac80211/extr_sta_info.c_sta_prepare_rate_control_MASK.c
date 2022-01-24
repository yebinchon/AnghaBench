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
struct sta_info {int /*<<< orphan*/  rate_ctrl_priv; int /*<<< orphan*/  rate_ctrl; } ;
struct ieee80211_local {int /*<<< orphan*/  rate_ctrl; int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HAS_RATE_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_local *local,
				    struct sta_info *sta, gfp_t gfp)
{
	if (FUNC0(&local->hw, HAS_RATE_CONTROL))
		return 0;

	sta->rate_ctrl = local->rate_ctrl;
	sta->rate_ctrl_priv = FUNC1(sta->rate_ctrl,
						     sta, gfp);
	if (!sta->rate_ctrl_priv)
		return -ENOMEM;

	return 0;
}