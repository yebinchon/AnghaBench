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
struct cma_mem {int n; int p; } ;
struct cma {scalar_t__ order_per_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma*,struct cma_mem*) ; 
 struct cma_mem* FUNC1 (struct cma*) ; 
 int /*<<< orphan*/  FUNC2 (struct cma*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cma_mem*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct cma *cma, int count)
{
	struct cma_mem *mem = NULL;

	while (count) {
		mem = FUNC1(cma);
		if (mem == NULL)
			return 0;

		if (mem->n <= count) {
			FUNC2(cma, mem->p, mem->n);
			count -= mem->n;
			FUNC3(mem);
		} else if (cma->order_per_bit == 0) {
			FUNC2(cma, mem->p, count);
			mem->p += count;
			mem->n -= count;
			count = 0;
			FUNC0(cma, mem);
		} else {
			FUNC4("cma: cannot release partial block when order_per_bit != 0\n");
			FUNC0(cma, mem);
			break;
		}
	}

	return 0;

}