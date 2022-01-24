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
struct cpudl {TYPE_1__* elements; } ;
struct TYPE_2__ {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpudl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpudl*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct cpudl *cp, int idx)
{
	if (idx > 0 && FUNC2(cp->elements[FUNC3(idx)].dl,
				cp->elements[idx].dl))
		FUNC1(cp, idx);
	else
		FUNC0(cp, idx);
}