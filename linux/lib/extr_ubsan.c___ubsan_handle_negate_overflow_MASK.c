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
struct overflow_data {TYPE_1__* type; int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/  old_val_str ;
struct TYPE_2__ {int /*<<< orphan*/  type_name; } ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,TYPE_1__*,void*) ; 

void FUNC5(struct overflow_data *data,
				void *old_val)
{
	unsigned long flags;
	char old_val_str[VALUE_LENGTH];

	if (FUNC1(&data->location))
		return;

	FUNC3(&data->location, &flags);

	FUNC4(old_val_str, sizeof(old_val_str), data->type, old_val);

	FUNC0("negation of %s cannot be represented in type %s:\n",
		old_val_str, data->type->type_name);

	FUNC2(&flags);
}