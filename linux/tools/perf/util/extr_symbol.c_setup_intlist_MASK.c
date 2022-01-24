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
struct intlist {int dummy; } ;

/* Variables and functions */
 struct intlist* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

int FUNC2(struct intlist **list, const char *list_str,
		  const char *list_name)
{
	if (list_str == NULL)
		return 0;

	*list = FUNC0(list_str);
	if (!*list) {
		FUNC1("problems parsing %s list\n", list_name);
		return -1;
	}
	return 0;
}