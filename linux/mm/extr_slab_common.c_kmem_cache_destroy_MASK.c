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
struct kmem_cache {int /*<<< orphan*/  name; scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct kmem_cache*) ; 
 int FUNC10 (struct kmem_cache*) ; 
 int /*<<< orphan*/  slab_mutex ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct kmem_cache *s)
{
	int err;

	if (FUNC11(!s))
		return;

	FUNC1(s);

	FUNC2();
	FUNC3();

	FUNC4(&slab_mutex);

	s->refcount--;
	if (s->refcount)
		goto out_unlock;

	err = FUNC10(s);
	if (!err)
		err = FUNC9(s);

	if (err) {
		FUNC6("kmem_cache_destroy %s: Slab cache still has objects\n",
		       s->name);
		FUNC0();
	}
out_unlock:
	FUNC5(&slab_mutex);

	FUNC8();
	FUNC7();
}