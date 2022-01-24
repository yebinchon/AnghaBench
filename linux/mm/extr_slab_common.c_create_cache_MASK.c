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
struct mem_cgroup {int dummy; } ;
struct kmem_cache {char const* name; unsigned int size; unsigned int object_size; unsigned int align; void (* ctor ) (void*) ;unsigned int useroffset; unsigned int usersize; int refcount; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  slab_flags_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct kmem_cache* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*) ; 
 int FUNC4 (struct kmem_cache*,struct kmem_cache*) ; 
 int /*<<< orphan*/  kmem_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kmem_cache*) ; 
 struct kmem_cache* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kmem_cache*,struct mem_cgroup*) ; 
 int /*<<< orphan*/  slab_caches ; 

__attribute__((used)) static struct kmem_cache *FUNC9(const char *name,
		unsigned int object_size, unsigned int align,
		slab_flags_t flags, unsigned int useroffset,
		unsigned int usersize, void (*ctor)(void *),
		struct mem_cgroup *memcg, struct kmem_cache *root_cache)
{
	struct kmem_cache *s;
	int err;

	if (FUNC1(useroffset + usersize > object_size))
		useroffset = usersize = 0;

	err = -ENOMEM;
	s = FUNC6(kmem_cache, GFP_KERNEL);
	if (!s)
		goto out;

	s->name = name;
	s->size = s->object_size = object_size;
	s->align = align;
	s->ctor = ctor;
	s->useroffset = useroffset;
	s->usersize = usersize;

	err = FUNC4(s, root_cache);
	if (err)
		goto out_free_cache;

	err = FUNC2(s, flags);
	if (err)
		goto out_free_cache;

	s->refcount = 1;
	FUNC7(&s->list, &slab_caches);
	FUNC8(s, memcg);
out:
	if (err)
		return FUNC0(err);
	return s;

out_free_cache:
	FUNC3(s);
	FUNC5(kmem_cache, s);
	goto out;
}