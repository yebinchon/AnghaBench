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
struct sort_dimension {int dummy; } ;
struct perf_hpp_list {int dummy; } ;
struct hpp_sort_entry {int /*<<< orphan*/  hpp; } ;

/* Variables and functions */
 struct hpp_sort_entry* FUNC0 (struct sort_dimension*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_hpp_list*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct sort_dimension *sd,
					  struct perf_hpp_list *list,
					  int level)
{
	struct hpp_sort_entry *hse = FUNC0(sd, level);

	if (hse == NULL)
		return -1;

	FUNC1(list, &hse->hpp);
	return 0;
}