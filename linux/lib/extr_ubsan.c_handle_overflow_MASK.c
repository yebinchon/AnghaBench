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
struct overflow_data {int /*<<< orphan*/  location; struct type_descriptor* type; } ;
typedef  int /*<<< orphan*/  rhs_val_str ;
typedef  int /*<<< orphan*/  lhs_val_str ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct type_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct type_descriptor*,void*) ; 

__attribute__((used)) static void FUNC6(struct overflow_data *data, void *lhs,
			void *rhs, char op)
{

	struct type_descriptor *type = data->type;
	unsigned long flags;
	char lhs_val_str[VALUE_LENGTH];
	char rhs_val_str[VALUE_LENGTH];

	if (FUNC1(&data->location))
		return;

	FUNC4(&data->location, &flags);

	FUNC5(lhs_val_str, sizeof(lhs_val_str), type, lhs);
	FUNC5(rhs_val_str, sizeof(rhs_val_str), type, rhs);
	FUNC0("%s integer overflow:\n",
		FUNC2(type) ? "signed" : "unsigned");
	FUNC0("%s %c %s cannot be represented in type %s\n",
		lhs_val_str,
		op,
		rhs_val_str,
		type->type_name);

	FUNC3(&flags);
}