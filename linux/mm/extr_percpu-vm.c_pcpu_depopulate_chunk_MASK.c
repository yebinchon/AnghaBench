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
struct pcpu_chunk {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_chunk*,struct page**,int,int) ; 
 struct page** FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pcpu_chunk*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pcpu_chunk*,struct page**,int,int) ; 

__attribute__((used)) static void FUNC5(struct pcpu_chunk *chunk,
				  int page_start, int page_end)
{
	struct page **pages;

	/*
	 * If control reaches here, there must have been at least one
	 * successful population attempt so the temp pages array must
	 * be available now.
	 */
	pages = FUNC2();
	FUNC0(!pages);

	/* unmap and free */
	FUNC3(chunk, page_start, page_end);

	FUNC4(chunk, pages, page_start, page_end);

	/* no need to flush tlb, vmalloc will handle it lazily */

	FUNC1(chunk, pages, page_start, page_end);
}