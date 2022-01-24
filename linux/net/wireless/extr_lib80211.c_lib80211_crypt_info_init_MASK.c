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
struct lib80211_crypt_info {char* name; int /*<<< orphan*/  crypt_deinit_timer; int /*<<< orphan*/  crypt_deinit_list; int /*<<< orphan*/ * lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lib80211_crypt_deinit_handler ; 
 int /*<<< orphan*/  FUNC1 (struct lib80211_crypt_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct lib80211_crypt_info *info, char *name,
				spinlock_t *lock)
{
	FUNC1(info, 0, sizeof(*info));

	info->name = name;
	info->lock = lock;

	FUNC0(&info->crypt_deinit_list);
	FUNC2(&info->crypt_deinit_timer, lib80211_crypt_deinit_handler,
		    0);

	return 0;
}