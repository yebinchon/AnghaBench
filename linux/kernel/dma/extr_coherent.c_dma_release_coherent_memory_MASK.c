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
struct dma_coherent_mem {struct dma_coherent_mem* bitmap; int /*<<< orphan*/  virt_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_coherent_mem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dma_coherent_mem *mem)
{
	if (!mem)
		return;

	FUNC1(mem->virt_base);
	FUNC0(mem->bitmap);
	FUNC0(mem);
}