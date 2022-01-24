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
struct assoc_array_ptr {int dummy; } ;
struct assoc_array {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 struct assoc_array_ptr* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct assoc_array_ptr*,int /*<<< orphan*/ *,int (*) (void const*,void*),void*) ; 

int FUNC2(const struct assoc_array *array,
			int (*iterator)(const void *object,
					void *iterator_data),
			void *iterator_data)
{
	struct assoc_array_ptr *root = FUNC0(array->root); /* Address dependency. */

	if (!root)
		return 0;
	return FUNC1(root, NULL, iterator, iterator_data);
}