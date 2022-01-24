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
struct pcpu_chunk {int /*<<< orphan*/  immutable; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pcpu_chunk*,unsigned int,int) ; 
 struct page* FUNC2 (void*) ; 

__attribute__((used)) static struct page *FUNC3(struct pcpu_chunk *chunk,
				    unsigned int cpu, int page_idx)
{
	/* must not be used on pre-mapped chunk */
	FUNC0(chunk->immutable);

	return FUNC2((void *)FUNC1(chunk, cpu, page_idx));
}