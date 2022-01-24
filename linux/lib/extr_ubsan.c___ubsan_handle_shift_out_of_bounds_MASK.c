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
struct type_descriptor {int /*<<< orphan*/  type_name; } ;
struct shift_out_of_bounds_data {int /*<<< orphan*/  location; struct type_descriptor* lhs_type; struct type_descriptor* rhs_type; } ;
typedef  int /*<<< orphan*/  rhs_str ;
typedef  int /*<<< orphan*/  lhs_str ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 scalar_t__ FUNC0 (struct type_descriptor*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct type_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long*) ; 
 scalar_t__ FUNC6 (struct type_descriptor*,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,struct type_descriptor*,void*) ; 

void FUNC8(struct shift_out_of_bounds_data *data,
					void *lhs, void *rhs)
{
	unsigned long flags;
	struct type_descriptor *rhs_type = data->rhs_type;
	struct type_descriptor *lhs_type = data->lhs_type;
	char rhs_str[VALUE_LENGTH];
	char lhs_str[VALUE_LENGTH];

	if (FUNC2(&data->location))
		return;

	FUNC5(&data->location, &flags);

	FUNC7(rhs_str, sizeof(rhs_str), rhs_type, rhs);
	FUNC7(lhs_str, sizeof(lhs_str), lhs_type, lhs);

	if (FUNC6(rhs_type, rhs))
		FUNC1("shift exponent %s is negative\n", rhs_str);

	else if (FUNC0(rhs_type, rhs) >=
		FUNC3(lhs_type))
		FUNC1("shift exponent %s is too large for %u-bit type %s\n",
			rhs_str,
			FUNC3(lhs_type),
			lhs_type->type_name);
	else if (FUNC6(lhs_type, lhs))
		FUNC1("left shift of negative value %s\n",
			lhs_str);
	else
		FUNC1("left shift of %s by %s places cannot be"
			" represented in type %s\n",
			lhs_str, rhs_str,
			lhs_type->type_name);

	FUNC4(&flags);
}