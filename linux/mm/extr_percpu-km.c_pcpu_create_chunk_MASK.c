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
struct pcpu_chunk {int /*<<< orphan*/  base_addr; struct page* data; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct pcpu_chunk* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pcpu_chunk*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct pcpu_chunk*) ; 
 int* pcpu_group_sizes ; 
 int /*<<< orphan*/  pcpu_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pcpu_chunk*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pcpu_chunk *FUNC12(gfp_t gfp)
{
	const int nr_pages = pcpu_group_sizes[0] >> PAGE_SHIFT;
	struct pcpu_chunk *chunk;
	struct page *pages;
	unsigned long flags;
	int i;

	chunk = FUNC4(gfp);
	if (!chunk)
		return NULL;

	pages = FUNC0(gfp, FUNC2(nr_pages));
	if (!pages) {
		FUNC6(chunk);
		return NULL;
	}

	for (i = 0; i < nr_pages; i++)
		FUNC7(FUNC1(pages, i), chunk);

	chunk->data = pages;
	chunk->base_addr = FUNC3(pages);

	FUNC9(&pcpu_lock, flags);
	FUNC5(chunk, 0, nr_pages);
	FUNC10(&pcpu_lock, flags);

	FUNC8();
	FUNC11(chunk->base_addr);

	return chunk;
}