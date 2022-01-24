#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int available; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int available; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int available; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int FUNC1 () ; 
 TYPE_3__* aalg_list ; 
 int FUNC2 () ; 
 TYPE_2__* calg_list ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 TYPE_1__* ealg_list ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	int i, status;

	FUNC0(FUNC7());

	for (i = 0; i < FUNC1(); i++) {
		status = FUNC3(aalg_list[i].name, 0, 0);
		if (aalg_list[i].available != status)
			aalg_list[i].available = status;
	}

	for (i = 0; i < FUNC6(); i++) {
		status = FUNC5(ealg_list[i].name, 0, 0);
		if (ealg_list[i].available != status)
			ealg_list[i].available = status;
	}

	for (i = 0; i < FUNC2(); i++) {
		status = FUNC4(calg_list[i].name, 0,
					 CRYPTO_ALG_ASYNC);
		if (calg_list[i].available != status)
			calg_list[i].available = status;
	}
}