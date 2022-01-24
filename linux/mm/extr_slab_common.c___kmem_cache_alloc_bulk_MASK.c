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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,size_t,void**) ; 
 void* FUNC1 (struct kmem_cache*,int /*<<< orphan*/ ) ; 

int FUNC2(struct kmem_cache *s, gfp_t flags, size_t nr,
								void **p)
{
	size_t i;

	for (i = 0; i < nr; i++) {
		void *x = p[i] = FUNC1(s, flags);
		if (!x) {
			FUNC0(s, i, p);
			return 0;
		}
	}
	return i;
}