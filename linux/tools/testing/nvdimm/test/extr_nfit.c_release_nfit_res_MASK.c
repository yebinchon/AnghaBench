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
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct nfit_test_resource {int /*<<< orphan*/  buf; TYPE_1__ res; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ DIMM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfit_test_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfit_pool ; 
 int /*<<< orphan*/  nfit_test_lock ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data)
{
	struct nfit_test_resource *nfit_res = data;

	FUNC4(&nfit_test_lock);
	FUNC2(&nfit_res->list);
	FUNC5(&nfit_test_lock);

	if (FUNC3(&nfit_res->res) >= DIMM_SIZE)
		FUNC0(nfit_pool, nfit_res->res.start,
				FUNC3(&nfit_res->res));
	FUNC6(nfit_res->buf);
	FUNC1(nfit_res);
}