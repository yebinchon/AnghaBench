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
struct zs_pool {int dummy; } ;
struct zs_compact_control {int obj_idx; struct page* s_page; struct page* d_page; } ;
struct size_class {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HANDLE_PIN_BIT ; 
 unsigned long FUNC1 (struct size_class*,struct page*,int*) ; 
 struct page* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct size_class*,unsigned long) ; 
 unsigned long FUNC6 (struct size_class*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct size_class*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (struct size_class*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct zs_pool *pool, struct size_class *class,
				struct zs_compact_control *cc)
{
	unsigned long used_obj, free_obj;
	unsigned long handle;
	struct page *s_page = cc->s_page;
	struct page *d_page = cc->d_page;
	int obj_idx = cc->obj_idx;
	int ret = 0;

	while (1) {
		handle = FUNC1(class, s_page, &obj_idx);
		if (!handle) {
			s_page = FUNC2(s_page);
			if (!s_page)
				break;
			obj_idx = 0;
			continue;
		}

		/* Stop if there is no more space */
		if (FUNC10(class, FUNC3(d_page))) {
			FUNC8(handle);
			ret = -ENOMEM;
			break;
		}

		used_obj = FUNC4(handle);
		free_obj = FUNC6(class, FUNC3(d_page), handle);
		FUNC9(class, free_obj, used_obj);
		obj_idx++;
		/*
		 * record_obj updates handle's value to free_obj and it will
		 * invalidate lock bit(ie, HANDLE_PIN_BIT) of handle, which
		 * breaks synchronization using pin_tag(e,g, zs_free) so
		 * let's keep the lock bit.
		 */
		free_obj |= FUNC0(HANDLE_PIN_BIT);
		FUNC7(handle, free_obj);
		FUNC8(handle);
		FUNC5(class, used_obj);
	}

	/* Remember last position in this iteration */
	cc->s_page = s_page;
	cc->obj_idx = obj_idx;

	return ret;
}