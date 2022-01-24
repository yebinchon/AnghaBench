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
struct ieee802154_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int (* set_cca_ed_level ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802154_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5(struct ieee802154_local *local, s32 mbm)
{
	int ret;

	FUNC1();

	if (!local->ops->set_cca_ed_level) {
		FUNC0(1);
		return -EOPNOTSUPP;
	}

	FUNC4(local, mbm);
	ret = local->ops->set_cca_ed_level(&local->hw, mbm);
	FUNC3(local, ret);
	return ret;
}