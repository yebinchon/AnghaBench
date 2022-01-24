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
struct xdp_umem_reg {int dummy; } ;
struct xdp_umem {int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct xdp_umem* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_umem*) ; 
 struct xdp_umem* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umem_ida ; 
 int FUNC5 (struct xdp_umem*,struct xdp_umem_reg*) ; 

struct xdp_umem *FUNC6(struct xdp_umem_reg *mr)
{
	struct xdp_umem *umem;
	int err;

	umem = FUNC4(sizeof(*umem), GFP_KERNEL);
	if (!umem)
		return FUNC0(-ENOMEM);

	err = FUNC1(&umem_ida, 0, 0, GFP_KERNEL);
	if (err < 0) {
		FUNC3(umem);
		return FUNC0(err);
	}
	umem->id = err;

	err = FUNC5(umem, mr);
	if (err) {
		FUNC2(&umem_ida, umem->id);
		FUNC3(umem);
		return FUNC0(err);
	}

	return umem;
}