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
struct zspage {int dummy; } ;
struct size_class {unsigned int size; } ;
struct page {int dummy; } ;
struct link_free {int next; } ;

/* Variables and functions */
 unsigned long OBJ_ALLOCATED_TAG ; 
 int OBJ_TAG_BITS ; 
 int /*<<< orphan*/  OBJ_USED ; 
 unsigned int PAGE_MASK ; 
 int FUNC0 (struct zspage*) ; 
 struct zspage* FUNC1 (struct page*) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct zspage*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct page**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct zspage*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct size_class*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct size_class *class, unsigned long obj)
{
	struct link_free *link;
	struct zspage *zspage;
	struct page *f_page;
	unsigned long f_offset;
	unsigned int f_objidx;
	void *vaddr;

	obj &= ~OBJ_ALLOCATED_TAG;
	FUNC5(obj, &f_page, &f_objidx);
	f_offset = (class->size * f_objidx) & ~PAGE_MASK;
	zspage = FUNC1(f_page);

	vaddr = FUNC2(f_page);

	/* Insert this object in containing zspage's freelist */
	link = (struct link_free *)(vaddr + f_offset);
	link->next = FUNC0(zspage) << OBJ_TAG_BITS;
	FUNC3(vaddr);
	FUNC6(zspage, f_objidx);
	FUNC4(zspage, -1);
	FUNC7(class, OBJ_USED, 1);
}