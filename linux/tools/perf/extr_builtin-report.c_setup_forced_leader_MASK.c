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
struct report {scalar_t__ group_set; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evlist*) ; 

__attribute__((used)) static void FUNC1(struct report *report,
				struct evlist *evlist)
{
	if (report->group_set)
		FUNC0(evlist);
}