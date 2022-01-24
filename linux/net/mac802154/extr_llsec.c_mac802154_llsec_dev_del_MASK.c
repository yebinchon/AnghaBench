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
struct mac802154_llsec_device {int /*<<< orphan*/  rcu; TYPE_1__ dev; int /*<<< orphan*/  bucket_hw; int /*<<< orphan*/  bucket_s; } ;
struct mac802154_llsec {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mac802154_llsec_device* FUNC3 (struct mac802154_llsec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  llsec_dev_free_rcu ; 

int FUNC4(struct mac802154_llsec *sec, __le64 device_addr)
{
	struct mac802154_llsec_device *pos;

	pos = FUNC3(sec, device_addr);
	if (!pos)
		return -ENOENT;

	FUNC1(&pos->bucket_s);
	FUNC1(&pos->bucket_hw);
	FUNC2(&pos->dev.list);
	FUNC0(&pos->rcu, llsec_dev_free_rcu);

	return 0;
}