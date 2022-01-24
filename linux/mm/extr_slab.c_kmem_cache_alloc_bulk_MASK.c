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
struct kmem_cache {int /*<<< orphan*/  object_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 void* FUNC0 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,size_t,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ,size_t,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ,size_t,void**) ; 
 struct kmem_cache* FUNC8 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct kmem_cache*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct kmem_cache *s, gfp_t flags, size_t size,
			  void **p)
{
	size_t i;

	s = FUNC8(s, flags);
	if (!s)
		return 0;

	FUNC3(s, flags);

	FUNC4();
	for (i = 0; i < size; i++) {
		void *objp = FUNC0(s, flags);

		if (FUNC10(!objp))
			goto error;
		p[i] = objp;
	}
	FUNC5();

	FUNC2(s, flags, size, p, _RET_IP_);

	/* Clear memory outside IRQ disabled section */
	if (FUNC10(FUNC9(flags, s)))
		for (i = 0; i < size; i++)
			FUNC6(p[i], 0, s->object_size);

	FUNC7(s, flags, size, p);
	/* FIXME: Trace call missing. Christoph would like a bulk variant */
	return size;
error:
	FUNC5();
	FUNC2(s, flags, i, p, _RET_IP_);
	FUNC7(s, flags, i, p);
	FUNC1(s, i, p);
	return 0;
}