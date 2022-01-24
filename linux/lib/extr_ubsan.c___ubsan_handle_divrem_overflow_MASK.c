#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct overflow_data {TYPE_1__* type; int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/  rhs_val_str ;
struct TYPE_4__ {int /*<<< orphan*/  type_name; } ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 int FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,TYPE_1__*,void*) ; 

void FUNC7(struct overflow_data *data,
				void *lhs, void *rhs)
{
	unsigned long flags;
	char rhs_val_str[VALUE_LENGTH];

	if (FUNC2(&data->location))
		return;

	FUNC5(&data->location, &flags);

	FUNC6(rhs_val_str, sizeof(rhs_val_str), data->type, rhs);

	if (FUNC3(data->type) && FUNC0(data->type, rhs) == -1)
		FUNC1("division of %s by -1 cannot be represented in type %s\n",
			rhs_val_str, data->type->type_name);
	else
		FUNC1("division by zero\n");

	FUNC4(&flags);
}