#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {long npgs; int /*<<< orphan*/ * pgs; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FOLL_LONGTERM ; 
 unsigned int FOLL_WRITE ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ ,long,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xdp_umem*) ; 

__attribute__((used)) static int FUNC6(struct xdp_umem *umem)
{
	unsigned int gup_flags = FOLL_WRITE;
	long npgs;
	int err;

	umem->pgs = FUNC2(umem->npgs, sizeof(*umem->pgs),
			    GFP_KERNEL | __GFP_NOWARN);
	if (!umem->pgs)
		return -ENOMEM;

	FUNC0(&current->mm->mmap_sem);
	npgs = FUNC1(umem->address, umem->npgs,
			      gup_flags | FOLL_LONGTERM, &umem->pgs[0], NULL);
	FUNC4(&current->mm->mmap_sem);

	if (npgs != umem->npgs) {
		if (npgs >= 0) {
			umem->npgs = npgs;
			err = -ENOMEM;
			goto out_pin;
		}
		err = npgs;
		goto out_pgs;
	}
	return 0;

out_pin:
	FUNC5(umem);
out_pgs:
	FUNC3(umem->pgs);
	umem->pgs = NULL;
	return err;
}