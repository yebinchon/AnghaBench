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
struct o2hb_heartbeat_group {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct o2hb_heartbeat_group*) ; 
 struct o2hb_heartbeat_group* FUNC1 (struct config_group*) ; 

void FUNC2(struct config_group *group)
{
	struct o2hb_heartbeat_group *hs = FUNC1(group);
	FUNC0(hs);
}