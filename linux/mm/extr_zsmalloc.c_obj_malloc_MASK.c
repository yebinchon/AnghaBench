#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zspage {TYPE_1__* first_page; } ;
struct size_class {unsigned long size; } ;
struct page {int dummy; } ;
struct link_free {int next; unsigned long handle; } ;
struct TYPE_2__ {unsigned long index; } ;

/* Variables and functions */
 unsigned long OBJ_ALLOCATED_TAG ; 
 int OBJ_TAG_BITS ; 
 int /*<<< orphan*/  OBJ_USED ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct zspage*) ; 
 unsigned long FUNC2 (struct zspage*) ; 
 struct page* FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int) ; 
 unsigned long FUNC7 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct zspage*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct zspage*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct size_class*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC11(struct size_class *class,
				struct zspage *zspage, unsigned long handle)
{
	int i, nr_page, offset;
	unsigned long obj;
	struct link_free *link;

	struct page *m_page;
	unsigned long m_offset;
	void *vaddr;

	handle |= OBJ_ALLOCATED_TAG;
	obj = FUNC2(zspage);

	offset = obj * class->size;
	nr_page = offset >> PAGE_SHIFT;
	m_offset = offset & ~PAGE_MASK;
	m_page = FUNC1(zspage);

	for (i = 0; i < nr_page; i++)
		m_page = FUNC3(m_page);

	vaddr = FUNC4(m_page);
	link = (struct link_free *)vaddr + m_offset / sizeof(*link);
	FUNC9(zspage, link->next >> OBJ_TAG_BITS);
	if (FUNC6(!FUNC0(m_page)))
		/* record handle in the header of allocated chunk */
		link->handle = handle;
	else
		/* record handle to page->index */
		zspage->first_page->index = handle;

	FUNC5(vaddr);
	FUNC8(zspage, 1);
	FUNC10(class, OBJ_USED, 1);

	obj = FUNC7(m_page, obj);

	return obj;
}