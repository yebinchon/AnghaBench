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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct pcpu_chunk*,struct page**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_chunk*,struct page**,int,int) ; 
 struct page** FUNC2 () ; 
 scalar_t__ FUNC3 (struct pcpu_chunk*,struct page**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pcpu_chunk*,int,int) ; 

__attribute__((used)) static int FUNC5(struct pcpu_chunk *chunk,
			       int page_start, int page_end, gfp_t gfp)
{
	struct page **pages;

	pages = FUNC2();
	if (!pages)
		return -ENOMEM;

	if (FUNC0(chunk, pages, page_start, page_end, gfp))
		return -ENOMEM;

	if (FUNC3(chunk, pages, page_start, page_end)) {
		FUNC1(chunk, pages, page_start, page_end);
		return -ENOMEM;
	}
	FUNC4(chunk, page_start, page_end);

	return 0;
}