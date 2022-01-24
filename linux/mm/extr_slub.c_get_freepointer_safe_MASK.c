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
struct kmem_cache {unsigned long offset; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (struct kmem_cache*,void*,unsigned long) ; 
 void* FUNC2 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,int) ; 

__attribute__((used)) static inline void *FUNC4(struct kmem_cache *s, void *object)
{
	unsigned long freepointer_addr;
	void *p;

	if (!FUNC0())
		return FUNC2(s, object);

	freepointer_addr = (unsigned long)object + s->offset;
	FUNC3(&p, (void **)freepointer_addr, sizeof(p));
	return FUNC1(s, p, freepointer_addr);
}