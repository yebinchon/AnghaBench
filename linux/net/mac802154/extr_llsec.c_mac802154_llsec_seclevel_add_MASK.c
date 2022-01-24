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
struct ieee802154_llsec_seclevel {int /*<<< orphan*/  list; } ;
struct mac802154_llsec_seclevel {struct ieee802154_llsec_seclevel level; } ;
struct TYPE_2__ {int /*<<< orphan*/  security_levels; } ;
struct mac802154_llsec {TYPE_1__ table; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mac802154_llsec_seclevel* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mac802154_llsec*,struct ieee802154_llsec_seclevel const*) ; 

int FUNC3(struct mac802154_llsec *sec,
				 const struct ieee802154_llsec_seclevel *sl)
{
	struct mac802154_llsec_seclevel *entry;

	if (FUNC2(sec, sl))
		return -EEXIST;

	entry = FUNC0(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	entry->level = *sl;

	FUNC1(&entry->level.list, &sec->table.security_levels);

	return 0;
}