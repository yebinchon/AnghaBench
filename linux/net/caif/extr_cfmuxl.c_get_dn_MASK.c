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
struct dev_info {int id; } ;
struct cfmuxl {int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/ * dn_cache; int /*<<< orphan*/  frml_list; } ;
struct cflayer {scalar_t__ id; } ;

/* Variables and functions */
 int DN_CACHE_SIZE ; 
 struct cflayer* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cflayer*) ; 
 struct cflayer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cflayer *FUNC5(struct cfmuxl *muxl, struct dev_info *dev_info)
{
	struct cflayer *dn;
	int idx = dev_info->id % DN_CACHE_SIZE;
	dn = FUNC2(muxl->dn_cache[idx]);
	if (dn == NULL || dn->id != dev_info->id) {
		FUNC3(&muxl->transmit_lock);
		dn = FUNC0(&muxl->frml_list, dev_info->id);
		FUNC1(muxl->dn_cache[idx], dn);
		FUNC4(&muxl->transmit_lock);
	}
	return dn;
}