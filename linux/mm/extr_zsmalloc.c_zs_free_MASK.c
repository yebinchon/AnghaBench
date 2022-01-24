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
struct zs_pool {struct size_class** size_class; } ;
struct size_class {int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;
typedef  enum fullness_group { ____Placeholder_fullness_group } fullness_group ;

/* Variables and functions */
 int ZS_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct zs_pool*,unsigned long) ; 
 int FUNC1 (struct size_class*,struct zspage*) ; 
 int /*<<< orphan*/  FUNC2 (struct zs_pool*,struct size_class*,struct zspage*) ; 
 struct zspage* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct zspage*,int*,int*) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int FUNC6 (struct zspage*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct zspage*) ; 
 int /*<<< orphan*/  FUNC9 (struct zspage*) ; 
 int /*<<< orphan*/  FUNC10 (struct size_class*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,struct page**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 

void FUNC17(struct zs_pool *pool, unsigned long handle)
{
	struct zspage *zspage;
	struct page *f_page;
	unsigned long obj;
	unsigned int f_objidx;
	int class_idx;
	struct size_class *class;
	enum fullness_group fullness;
	bool isolated;

	if (FUNC15(!handle))
		return;

	FUNC12(handle);
	obj = FUNC5(handle);
	FUNC11(obj, &f_page, &f_objidx);
	zspage = FUNC3(f_page);

	FUNC8(zspage);

	FUNC4(zspage, &class_idx, &fullness);
	class = pool->size_class[class_idx];

	FUNC13(&class->lock);
	FUNC10(class, obj);
	fullness = FUNC1(class, zspage);
	if (fullness != ZS_EMPTY) {
		FUNC9(zspage);
		goto out;
	}

	isolated = FUNC6(zspage);
	FUNC9(zspage);
	/* If zspage is isolated, zs_page_putback will free the zspage */
	if (FUNC7(!isolated))
		FUNC2(pool, class, zspage);
out:

	FUNC14(&class->lock);
	FUNC16(handle);
	FUNC0(pool, handle);
}