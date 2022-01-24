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
struct inotify_event_info {scalar_t__ name_len; } ;
struct inotify_event {int dummy; } ;
struct fsnotify_event {int dummy; } ;

/* Variables and functions */
 struct inotify_event_info* FUNC0 (struct fsnotify_event*) ; 
 int FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct fsnotify_event *fsn_event)
{
	struct inotify_event_info *event;

	event = FUNC0(fsn_event);
	if (!event->name_len)
		return 0;
	return FUNC1(event->name_len + 1, sizeof(struct inotify_event));
}