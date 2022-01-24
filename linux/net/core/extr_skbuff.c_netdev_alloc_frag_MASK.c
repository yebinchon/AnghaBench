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
struct page_frag_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int FUNC0 (unsigned int) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  netdev_alloc_cache ; 
 void* FUNC6 (struct page_frag_cache*,unsigned int,int /*<<< orphan*/ ) ; 
 struct page_frag_cache* FUNC7 (int /*<<< orphan*/ *) ; 

void *FUNC8(unsigned int fragsz)
{
	struct page_frag_cache *nc;
	void *data;

	fragsz = FUNC0(fragsz);
	if (FUNC2() || FUNC3()) {
		nc = FUNC7(&netdev_alloc_cache);
		data = FUNC6(nc, fragsz, GFP_ATOMIC);
	} else {
		FUNC4();
		data = FUNC1(fragsz, GFP_ATOMIC);
		FUNC5();
	}
	return data;
}