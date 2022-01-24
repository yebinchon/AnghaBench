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
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_coverage_class ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct ieee80211_local *local,
					 s16 value)
{
	int ret = 0;
	FUNC0();

	FUNC3(local, value);
	if (local->ops->set_coverage_class)
		local->ops->set_coverage_class(&local->hw, value);
	else
		ret = -EOPNOTSUPP;

	FUNC2(local, ret);
	return ret;
}