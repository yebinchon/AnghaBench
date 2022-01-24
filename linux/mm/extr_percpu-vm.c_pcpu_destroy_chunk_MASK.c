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
 int /*<<< orphan*/  FUNC0 (struct pcpu_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcpu_nr_groups ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pcpu_chunk *chunk)
{
	if (!chunk)
		return;

	FUNC2();
	FUNC3(chunk->base_addr);

	if (chunk->data)
		FUNC1(chunk->data, pcpu_nr_groups);
	FUNC0(chunk);
}