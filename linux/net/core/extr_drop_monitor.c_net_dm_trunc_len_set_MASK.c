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
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 size_t NET_DM_ATTR_TRUNC_LEN ; 
 int /*<<< orphan*/  net_dm_trunc_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct genl_info *info)
{
	if (!info->attrs[NET_DM_ATTR_TRUNC_LEN])
		return;

	net_dm_trunc_len = FUNC0(info->attrs[NET_DM_ATTR_TRUNC_LEN]);
}