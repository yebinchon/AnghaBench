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
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cfg80211_regdomain ; 
 struct ieee80211_regdomain const* cfg80211_world_regdom ; 
 int /*<<< orphan*/  core_request_world ; 
 struct ieee80211_regdomain* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain const world_regdom ; 

__attribute__((used)) static void FUNC5(bool full_reset,
			     const struct ieee80211_regdomain *new_regdom)
{
	const struct ieee80211_regdomain *r;

	FUNC0();

	r = FUNC1();

	/* avoid freeing static information or freeing something twice */
	if (r == cfg80211_world_regdom)
		r = NULL;
	if (cfg80211_world_regdom == &world_regdom)
		cfg80211_world_regdom = NULL;
	if (r == &world_regdom)
		r = NULL;

	FUNC3(r);
	FUNC3(cfg80211_world_regdom);

	cfg80211_world_regdom = &world_regdom;
	FUNC2(cfg80211_regdomain, new_regdom);

	if (!full_reset)
		return;

	FUNC4(&core_request_world);
}