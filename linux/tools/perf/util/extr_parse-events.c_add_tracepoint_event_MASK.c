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
struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ; 
 int FUNC1 (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct list_head *list, int *idx,
				const char *sys_name, const char *evt_name,
				struct parse_events_error *err,
				struct list_head *head_config)
{
	return FUNC2(evt_name, "*?") ?
	       FUNC1(list, idx, sys_name, evt_name,
					  err, head_config) :
	       FUNC0(list, idx, sys_name, evt_name,
			      err, head_config);
}