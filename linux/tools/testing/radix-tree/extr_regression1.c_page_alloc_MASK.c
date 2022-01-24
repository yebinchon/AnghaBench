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
struct page {int count; int index; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC2(int index)
{
	struct page *p;
	p = FUNC0(sizeof(struct page));
	p->count = 1;
	p->index = index;
	FUNC1(&p->lock, NULL);

	return p;
}