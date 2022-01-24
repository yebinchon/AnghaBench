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
struct xsk_umem {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xsk; TYPE_1__* umem; } ;
struct TYPE_3__ {struct xsk_umem* umem; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xsk_umem*) ; 
 TYPE_2__** xsks ; 

__attribute__((used)) static void FUNC5(int sig)
{
	struct xsk_umem *umem = xsks[0]->umem->umem;

	(void)sig;

	FUNC0();
	FUNC3(xsks[0]->xsk);
	(void)FUNC4(umem);
	FUNC2();

	FUNC1(EXIT_SUCCESS);
}