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
struct kmem_cache {int dummy; } ;
typedef  int slab_flags_t ;

/* Variables and functions */
 int CACHE_CREATE_MASK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct kmem_cache*) ; 
 int FUNC1 (struct kmem_cache*) ; 
 int SLAB_FLAGS_PERMITTED ; 
 int SLAB_PANIC ; 
 scalar_t__ FUNC2 (int) ; 
 struct kmem_cache* FUNC3 (char const*,unsigned int,unsigned int,int,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned int) ; 
 struct kmem_cache* FUNC5 (char const*,unsigned int,int /*<<< orphan*/ ,int,unsigned int,unsigned int,void (*) (void*),int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int FUNC10 (char const*,unsigned int) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  slab_mutex ; 

struct kmem_cache *
FUNC20(const char *name,
		  unsigned int size, unsigned int align,
		  slab_flags_t flags,
		  unsigned int useroffset, unsigned int usersize,
		  void (*ctor)(void *))
{
	struct kmem_cache *s = NULL;
	const char *cache_name;
	int err;

	FUNC7();
	FUNC8();
	FUNC12();

	FUNC14(&slab_mutex);

	err = FUNC10(name, size);
	if (err) {
		goto out_unlock;
	}

	/* Refuse requests with allocator specific flags */
	if (flags & ~SLAB_FLAGS_PERMITTED) {
		err = -EINVAL;
		goto out_unlock;
	}

	/*
	 * Some allocators will constraint the set of valid flags to a subset
	 * of all flags. We expect them to define CACHE_CREATE_MASK in this
	 * case, and we'll just provide them with a sanitized version of the
	 * passed flags.
	 */
	flags &= CACHE_CREATE_MASK;

	/* Fail closed on bad usersize of useroffset values. */
	if (FUNC2(!usersize && useroffset) ||
	    FUNC2(size < usersize || size - usersize < useroffset))
		usersize = useroffset = 0;

	if (!usersize)
		s = FUNC3(name, size, align, flags, ctor);
	if (s)
		goto out_unlock;

	cache_name = FUNC11(name, GFP_KERNEL);
	if (!cache_name) {
		err = -ENOMEM;
		goto out_unlock;
	}

	s = FUNC5(cache_name, size,
			 FUNC4(flags, align, size),
			 flags, useroffset, usersize, ctor, NULL, NULL);
	if (FUNC0(s)) {
		err = FUNC1(s);
		FUNC9(cache_name);
	}

out_unlock:
	FUNC15(&slab_mutex);

	FUNC13();
	FUNC19();
	FUNC18();

	if (err) {
		if (flags & SLAB_PANIC)
			FUNC16("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
				name, err);
		else {
			FUNC17("kmem_cache_create(%s) failed with error %d\n",
				name, err);
			FUNC6();
		}
		return NULL;
	}
	return s;
}