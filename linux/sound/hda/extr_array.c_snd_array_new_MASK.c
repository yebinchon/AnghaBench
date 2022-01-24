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
struct snd_array {int elem_size; int used; int alloced; int alloc_align; void* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (struct snd_array*,int /*<<< orphan*/ ) ; 

void *FUNC4(struct snd_array *array)
{
	if (FUNC2(!array->elem_size))
		return NULL;
	if (array->used >= array->alloced) {
		int num = array->alloced + array->alloc_align;
		int oldsize = array->alloced * array->elem_size;
		int size = (num + 1) * array->elem_size;
		void *nlist;
		if (FUNC2(num >= 4096))
			return NULL;
		nlist = FUNC0(array->list, size, GFP_KERNEL);
		if (!nlist)
			return NULL;
		FUNC1(nlist + oldsize, 0, size - oldsize);
		array->list = nlist;
		array->alloced = num;
	}
	return FUNC3(array, array->used++);
}