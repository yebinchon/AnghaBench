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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct mac802154_llsec_seclevel {TYPE_1__ level; } ;
struct mac802154_llsec {int dummy; } ;
struct ieee802154_llsec_seclevel {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct mac802154_llsec_seclevel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mac802154_llsec_seclevel* FUNC2 (struct mac802154_llsec*,struct ieee802154_llsec_seclevel const*) ; 
 int /*<<< orphan*/  rcu ; 

int FUNC3(struct mac802154_llsec *sec,
				 const struct ieee802154_llsec_seclevel *sl)
{
	struct mac802154_llsec_seclevel *pos;

	pos = FUNC2(sec, sl);
	if (!pos)
		return -ENOENT;

	FUNC1(&pos->level.list);
	FUNC0(pos, rcu);

	return 0;
}