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
struct xdp_umem {struct xdp_umem* pages; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * fq; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  umem_ida ; 
 int /*<<< orphan*/  FUNC4 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC5 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC6 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC7 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct xdp_umem *umem)
{
	FUNC2();
	FUNC4(umem);
	FUNC3();

	FUNC0(&umem_ida, umem->id);

	if (umem->fq) {
		FUNC9(umem->fq);
		umem->fq = NULL;
	}

	if (umem->cq) {
		FUNC9(umem->cq);
		umem->cq = NULL;
	}

	FUNC8(umem);

	FUNC6(umem);
	FUNC7(umem);

	FUNC1(umem->pages);
	umem->pages = NULL;

	FUNC5(umem);
	FUNC1(umem);
}