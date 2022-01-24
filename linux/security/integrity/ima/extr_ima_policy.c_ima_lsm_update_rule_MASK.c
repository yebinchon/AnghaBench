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
struct ima_rule_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ima_rule_entry* FUNC0 (struct ima_rule_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ima_rule_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct ima_rule_entry *entry)
{
	struct ima_rule_entry *nentry;

	nentry = FUNC0(entry);
	if (!nentry)
		return -ENOMEM;

	FUNC2(&entry->list, &nentry->list);
	FUNC3();
	FUNC1(entry);

	return 0;
}