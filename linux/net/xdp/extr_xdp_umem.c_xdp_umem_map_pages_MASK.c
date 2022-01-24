#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {unsigned int npgs; TYPE_1__* pages; int /*<<< orphan*/ * pgs; } ;
struct TYPE_2__ {void* addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAP ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_umem*) ; 

__attribute__((used)) static int FUNC4(struct xdp_umem *umem)
{
	unsigned int i;
	void *addr;

	for (i = 0; i < umem->npgs; i++) {
		if (FUNC0(umem->pgs[i]))
			addr = FUNC2(&umem->pgs[i], 1, VM_MAP, PAGE_KERNEL);
		else
			addr = FUNC1(umem->pgs[i]);

		if (!addr) {
			FUNC3(umem);
			return -ENOMEM;
		}

		umem->pages[i].addr = addr;
	}

	return 0;
}