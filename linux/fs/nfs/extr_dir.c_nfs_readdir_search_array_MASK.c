#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_cache_array {scalar_t__ size; int /*<<< orphan*/  last_cookie; } ;
struct TYPE_5__ {scalar_t__* dir_cookie; int /*<<< orphan*/  page; int /*<<< orphan*/  page_index; int /*<<< orphan*/  current_index; int /*<<< orphan*/  last_cookie; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfs_cache_array* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_cache_array*,TYPE_1__*) ; 
 int FUNC3 (struct nfs_cache_array*,TYPE_1__*) ; 

__attribute__((used)) static
int FUNC4(nfs_readdir_descriptor_t *desc)
{
	struct nfs_cache_array *array;
	int status;

	array = FUNC0(desc->page);

	if (*desc->dir_cookie == 0)
		status = FUNC3(array, desc);
	else
		status = FUNC2(array, desc);

	if (status == -EAGAIN) {
		desc->last_cookie = array->last_cookie;
		desc->current_index += array->size;
		desc->page_index++;
	}
	FUNC1(desc->page);
	return status;
}