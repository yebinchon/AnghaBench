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
typedef  int /*<<< orphan*/  u32 ;
struct audit_field {int dummy; } ;
struct TYPE_2__ {struct audit_field* fields; } ;
struct audit_entry {TYPE_1__ rule; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct audit_field* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_entry*) ; 
 struct audit_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline struct audit_entry *FUNC4(u32 field_count)
{
	struct audit_entry *entry;
	struct audit_field *fields;

	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (FUNC3(!entry))
		return NULL;

	fields = FUNC0(field_count, sizeof(*fields), GFP_KERNEL);
	if (FUNC3(!fields)) {
		FUNC1(entry);
		return NULL;
	}
	entry->rule.fields = fields;

	return entry;
}