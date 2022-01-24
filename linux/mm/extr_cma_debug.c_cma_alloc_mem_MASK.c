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
struct page {int dummy; } ;
struct cma_mem {int n; struct page* p; } ;
struct cma {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cma*,struct cma_mem*) ; 
 struct page* FUNC1 (struct cma*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cma_mem*) ; 
 struct cma_mem* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cma *cma, int count)
{
	struct cma_mem *mem;
	struct page *p;

	mem = FUNC3(sizeof(*mem), GFP_KERNEL);
	if (!mem)
		return -ENOMEM;

	p = FUNC1(cma, count, 0, false);
	if (!p) {
		FUNC2(mem);
		return -ENOMEM;
	}

	mem->p = p;
	mem->n = count;

	FUNC0(cma, mem);

	return 0;
}