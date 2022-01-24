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
typedef  int /*<<< orphan*/  u8 ;
struct kmem_cache {int flags; } ;
struct kasan_track {int dummy; } ;
struct kasan_alloc_meta {struct kasan_track alloc_track; } ;

/* Variables and functions */
 int SLAB_KASAN ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,void*,void const*) ; 
 struct kasan_alloc_meta* FUNC1 (struct kmem_cache*,void*) ; 
 struct kasan_track* FUNC2 (struct kmem_cache*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct kasan_track*,char*) ; 

__attribute__((used)) static void FUNC5(struct kmem_cache *cache, void *object,
				const void *addr, u8 tag)
{
	struct kasan_alloc_meta *alloc_info = FUNC1(cache, object);

	if (cache->flags & SLAB_KASAN) {
		struct kasan_track *free_track;

		FUNC4(&alloc_info->alloc_track, "Allocated");
		FUNC3("\n");
		free_track = FUNC2(cache, object, tag);
		FUNC4(free_track, "Freed");
		FUNC3("\n");
	}

	FUNC0(cache, object, addr);
}