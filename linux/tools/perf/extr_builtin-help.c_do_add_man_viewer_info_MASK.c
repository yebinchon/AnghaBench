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
struct man_viewer_info_list {struct man_viewer_info_list* next; int /*<<< orphan*/  info; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct man_viewer_info_list* man_viewer_info_list ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct man_viewer_info_list* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const char *name,
				   size_t len,
				   const char *value)
{
	struct man_viewer_info_list *new = FUNC2(sizeof(*new) + len + 1);

	FUNC1(new->name, name, len);
	new->info = FUNC0(value);
	new->next = man_viewer_info_list;
	man_viewer_info_list = new;
}