#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  assoc; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static ssize_t FUNC2(
	struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
	if (!FUNC1(sdata) || !sdata->vif.bss_conf.assoc)
		return -ENOTCONN;

	FUNC0(&sdata->vif);

	return buflen;
}