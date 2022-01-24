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
struct zs_pool {int /*<<< orphan*/  pages_allocated; struct size_class** size_class; } ;
struct size_class {int /*<<< orphan*/  lock; int /*<<< orphan*/  objs_per_zspage; int /*<<< orphan*/  pages_per_zspage; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum fullness_group { ____Placeholder_fullness_group } fullness_group ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (struct zs_pool*,struct zspage*) ; 
 scalar_t__ ZS_HANDLE_SIZE ; 
 size_t ZS_MAX_ALLOC_SIZE ; 
 struct zspage* FUNC1 (struct zs_pool*,struct size_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (struct zs_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_pool*,unsigned long) ; 
 struct zspage* FUNC5 (struct size_class*) ; 
 int /*<<< orphan*/  FUNC6 (struct size_class*,struct zspage*) ; 
 int FUNC7 (struct size_class*,struct zspage*) ; 
 size_t FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct size_class*,struct zspage*,int) ; 
 scalar_t__ FUNC10 (struct zspage*) ; 
 unsigned long FUNC11 (struct size_class*,struct zspage*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct zspage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct size_class*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned long FUNC18(struct zs_pool *pool, size_t size, gfp_t gfp)
{
	unsigned long handle, obj;
	struct size_class *class;
	enum fullness_group newfg;
	struct zspage *zspage;

	if (FUNC16(!size || size > ZS_MAX_ALLOC_SIZE))
		return 0;

	handle = FUNC3(pool, gfp);
	if (!handle)
		return 0;

	/* extra space in chunk to keep the handle */
	size += ZS_HANDLE_SIZE;
	class = pool->size_class[FUNC8(size)];

	FUNC14(&class->lock);
	zspage = FUNC5(class);
	if (FUNC10(zspage)) {
		obj = FUNC11(class, zspage, handle);
		/* Now move the zspage to another fullness group, if required */
		FUNC6(class, zspage);
		FUNC12(handle, obj);
		FUNC15(&class->lock);

		return handle;
	}

	FUNC15(&class->lock);

	zspage = FUNC1(pool, class, gfp);
	if (!zspage) {
		FUNC4(pool, handle);
		return 0;
	}

	FUNC14(&class->lock);
	obj = FUNC11(class, zspage, handle);
	newfg = FUNC7(class, zspage);
	FUNC9(class, zspage, newfg);
	FUNC13(zspage, class->index, newfg);
	FUNC12(handle, obj);
	FUNC2(class->pages_per_zspage,
				&pool->pages_allocated);
	FUNC17(class, OBJ_ALLOCATED, class->objs_per_zspage);

	/* We completely set up zspage so mark them as movable */
	FUNC0(pool, zspage);
	FUNC15(&class->lock);

	return handle;
}