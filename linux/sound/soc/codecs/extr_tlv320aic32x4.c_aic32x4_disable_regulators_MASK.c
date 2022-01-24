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
struct aic32x4_priv {int /*<<< orphan*/  supply_av; int /*<<< orphan*/  supply_dv; int /*<<< orphan*/  supply_ldo; int /*<<< orphan*/  supply_iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct aic32x4_priv *aic32x4)
{
	FUNC1(aic32x4->supply_iov);

	if (!FUNC0(aic32x4->supply_ldo))
		FUNC1(aic32x4->supply_ldo);

	if (!FUNC0(aic32x4->supply_dv))
		FUNC1(aic32x4->supply_dv);

	if (!FUNC0(aic32x4->supply_av))
		FUNC1(aic32x4->supply_av);
}