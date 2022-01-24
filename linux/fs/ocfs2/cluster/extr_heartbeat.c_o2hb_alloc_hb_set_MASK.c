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
struct config_group {int dummy; } ;
struct o2hb_heartbeat_group {struct config_group hs_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct config_group*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct o2hb_heartbeat_group*) ; 
 struct o2hb_heartbeat_group* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  o2hb_heartbeat_group_type ; 

struct config_group *FUNC3(void)
{
	struct o2hb_heartbeat_group *hs = NULL;
	struct config_group *ret = NULL;

	hs = FUNC2(sizeof(struct o2hb_heartbeat_group), GFP_KERNEL);
	if (hs == NULL)
		goto out;

	FUNC0(&hs->hs_group, "heartbeat",
				    &o2hb_heartbeat_group_type);

	ret = &hs->hs_group;
out:
	if (ret == NULL)
		FUNC1(hs);
	return ret;
}