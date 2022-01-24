#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * stalink; } ;
struct ieee80211_key {TYPE_1__ debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct ieee80211_key *key,
				   struct sta_info *sta)
{
	FUNC0(key->debugfs.stalink);
	key->debugfs.stalink = NULL;
}