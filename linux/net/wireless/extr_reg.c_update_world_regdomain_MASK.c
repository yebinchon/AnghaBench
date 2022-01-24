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
struct regulatory_request {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_regdomain const* cfg80211_world_regdom ; 
 struct regulatory_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,struct ieee80211_regdomain const*) ; 

__attribute__((used)) static void FUNC3(const struct ieee80211_regdomain *rd)
{
	struct regulatory_request *lr;

	lr = FUNC1();

	FUNC0(!lr);

	FUNC2(false, rd);

	cfg80211_world_regdom = rd;
}