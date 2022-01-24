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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static inline int FUNC2(struct mm_struct *mm, unsigned long address,
			     pte_t **ptepp, spinlock_t **ptlp)
{
	int res;

	/* (void) is needed to make gcc happy */
	(void) FUNC0(*ptlp,
			   !(res = FUNC1(mm, address, NULL,
						    ptepp, NULL, ptlp)));
	return res;
}