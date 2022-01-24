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
struct pcpu_chunk {scalar_t__ data; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (struct pcpu_chunk*) ; 
 int* pcpu_group_sizes ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pcpu_chunk *chunk)
{
	const int nr_pages = pcpu_group_sizes[0] >> PAGE_SHIFT;

	if (!chunk)
		return;

	FUNC3();
	FUNC4(chunk->base_addr);

	if (chunk->data)
		FUNC0(chunk->data, FUNC1(nr_pages));
	FUNC2(chunk);
}