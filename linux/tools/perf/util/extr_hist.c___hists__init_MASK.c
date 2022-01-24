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
struct perf_hpp_list {int dummy; } ;
struct hists {int socket_filter; int /*<<< orphan*/  hpp_formats; struct perf_hpp_list* hpp_list; int /*<<< orphan*/  lock; void* entries; void* entries_collapsed; void** entries_in_array; void** entries_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC1 (struct hists*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct hists *hists, struct perf_hpp_list *hpp_list)
{
	FUNC1(hists, 0, sizeof(*hists));
	hists->entries_in_array[0] = hists->entries_in_array[1] = RB_ROOT_CACHED;
	hists->entries_in = &hists->entries_in_array[0];
	hists->entries_collapsed = RB_ROOT_CACHED;
	hists->entries = RB_ROOT_CACHED;
	FUNC2(&hists->lock, NULL);
	hists->socket_filter = -1;
	hists->hpp_list = hpp_list;
	FUNC0(&hists->hpp_formats);
	return 0;
}