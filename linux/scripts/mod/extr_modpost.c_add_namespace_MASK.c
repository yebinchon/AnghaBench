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
struct namespace_list {struct namespace_list* next; int /*<<< orphan*/  namespace; } ;

/* Variables and functions */
 struct namespace_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct namespace_list*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct namespace_list **list, const char *namespace)
{
	struct namespace_list *ns_entry;

	if (!FUNC1(*list, namespace)) {
		ns_entry = FUNC0(FUNC2(sizeof(struct namespace_list) +
					 FUNC4(namespace) + 1));
		FUNC3(ns_entry->namespace, namespace);
		ns_entry->next = *list;
		*list = ns_entry;
	}
}