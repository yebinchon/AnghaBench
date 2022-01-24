#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;
struct policydb {TYPE_1__ p_classes; } ;
struct class_datum {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 struct class_datum* FUNC0 (int /*<<< orphan*/ ,char const*) ; 

u16 FUNC1(struct policydb *p, const char *name)
{
	struct class_datum *cladatum;

	cladatum = FUNC0(p->p_classes.table, name);
	if (!cladatum)
		return 0;

	return cladatum->value;
}