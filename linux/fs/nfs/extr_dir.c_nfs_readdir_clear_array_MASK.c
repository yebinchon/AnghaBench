#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_cache_array {int size; TYPE_2__* array; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfs_cache_array* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_cache_array*) ; 

__attribute__((used)) static
void FUNC3(struct page *page)
{
	struct nfs_cache_array *array;
	int i;

	array = FUNC1(page);
	for (i = 0; i < array->size; i++)
		FUNC0(array->array[i].string.name);
	FUNC2(array);
}