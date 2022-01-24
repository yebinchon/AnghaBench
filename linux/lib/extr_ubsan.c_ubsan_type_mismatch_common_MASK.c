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
struct type_mismatch_data_common {scalar_t__ alignment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct type_mismatch_data_common*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct type_mismatch_data_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct type_mismatch_data_common*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct type_mismatch_data_common *data,
				unsigned long ptr)
{
	unsigned long flags = FUNC5();

	if (!ptr)
		FUNC2(data);
	else if (data->alignment && !FUNC0(ptr, data->alignment))
		FUNC1(data, ptr);
	else
		FUNC3(data, ptr);

	FUNC4(flags);
}