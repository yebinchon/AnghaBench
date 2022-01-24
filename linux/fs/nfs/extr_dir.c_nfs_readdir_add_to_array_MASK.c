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
struct page {int dummy; } ;
struct nfs_entry {scalar_t__ eof; int /*<<< orphan*/  cookie; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; int /*<<< orphan*/  prev_cookie; } ;
struct nfs_cache_array_entry {int /*<<< orphan*/  string; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; int /*<<< orphan*/  cookie; } ;
struct nfs_cache_array {size_t size; size_t eof_index; int /*<<< orphan*/  last_cookie; struct nfs_cache_array_entry* array; } ;

/* Variables and functions */
 int ENOSPC ; 
 int PAGE_SIZE ; 
 struct nfs_cache_array* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static
int FUNC4(struct nfs_entry *entry, struct page *page)
{
	struct nfs_cache_array *array = FUNC0(page);
	struct nfs_cache_array_entry *cache_entry;
	int ret;

	cache_entry = &array->array[array->size];

	/* Check that this entry lies within the page bounds */
	ret = -ENOSPC;
	if ((char *)&cache_entry[1] - (char *)FUNC3(page) > PAGE_SIZE)
		goto out;

	cache_entry->cookie = entry->prev_cookie;
	cache_entry->ino = entry->ino;
	cache_entry->d_type = entry->d_type;
	ret = FUNC2(&cache_entry->string, entry->name, entry->len);
	if (ret)
		goto out;
	array->last_cookie = entry->cookie;
	array->size++;
	if (entry->eof != 0)
		array->eof_index = array->size;
out:
	FUNC1(page);
	return ret;
}