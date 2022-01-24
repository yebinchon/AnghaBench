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
typedef  int /*<<< orphan*/  val_str ;
struct invalid_value_data {TYPE_1__* type; int /*<<< orphan*/  location; } ;
struct TYPE_2__ {int /*<<< orphan*/  type_name; } ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,TYPE_1__*,void*) ; 

void FUNC5(struct invalid_value_data *data,
				void *val)
{
	unsigned long flags;
	char val_str[VALUE_LENGTH];

	if (FUNC1(&data->location))
		return;

	FUNC3(&data->location, &flags);

	FUNC4(val_str, sizeof(val_str), data->type, val);

	FUNC0("load of value %s is not a valid value for type %s\n",
		val_str, data->type->type_name);

	FUNC2(&flags);
}