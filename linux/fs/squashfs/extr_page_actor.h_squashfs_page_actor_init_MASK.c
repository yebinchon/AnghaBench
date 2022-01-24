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
struct squashfs_page_actor {int length; void** page; int pages; scalar_t__ next_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 struct squashfs_page_actor* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct squashfs_page_actor *FUNC1(void **page,
	int pages, int length)
{
	struct squashfs_page_actor *actor = FUNC0(sizeof(*actor), GFP_KERNEL);

	if (actor == NULL)
		return NULL;

	actor->length = length ? : pages * PAGE_SIZE;
	actor->page = page;
	actor->pages = pages;
	actor->next_page = 0;
	return actor;
}