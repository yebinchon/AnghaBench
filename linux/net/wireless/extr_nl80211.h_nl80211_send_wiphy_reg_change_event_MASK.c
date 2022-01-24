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

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_WIPHY_REG_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct regulatory_request*) ; 

__attribute__((used)) static inline void
FUNC1(struct regulatory_request *request)
{
	FUNC0(NL80211_CMD_WIPHY_REG_CHANGE, request);
}