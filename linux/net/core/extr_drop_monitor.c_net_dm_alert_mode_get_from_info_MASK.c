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
typedef  int u8 ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
typedef  enum net_dm_alert_mode { ____Placeholder_net_dm_alert_mode } net_dm_alert_mode ;

/* Variables and functions */
 int EINVAL ; 
#define  NET_DM_ALERT_MODE_PACKET 129 
#define  NET_DM_ALERT_MODE_SUMMARY 128 
 size_t NET_DM_ATTR_ALERT_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct genl_info *info,
					   enum net_dm_alert_mode *p_alert_mode)
{
	u8 val;

	val = FUNC0(info->attrs[NET_DM_ATTR_ALERT_MODE]);

	switch (val) {
	case NET_DM_ALERT_MODE_SUMMARY: /* fall-through */
	case NET_DM_ALERT_MODE_PACKET:
		*p_alert_mode = val;
		break;
	default:
		return -EINVAL;
	}

	return 0;
}