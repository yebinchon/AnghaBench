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
struct out_of_bounds_data {TYPE_1__* array_type; int /*<<< orphan*/  index_type; int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/  index_str ;
struct TYPE_2__ {int /*<<< orphan*/  type_name; } ;

/* Variables and functions */
 int VALUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,void*) ; 

void FUNC5(struct out_of_bounds_data *data, void *index)
{
	unsigned long flags;
	char index_str[VALUE_LENGTH];

	if (FUNC1(&data->location))
		return;

	FUNC3(&data->location, &flags);

	FUNC4(index_str, sizeof(index_str), data->index_type, index);
	FUNC0("index %s is out of range for type %s\n", index_str,
		data->array_type->type_name);
	FUNC2(&flags);
}