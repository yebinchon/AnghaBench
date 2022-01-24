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
struct zspage {struct page* first_page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static inline struct page *FUNC2(struct zspage *zspage)
{
	struct page *first_page = zspage->first_page;

	FUNC0(!FUNC1(first_page), first_page);
	return first_page;
}