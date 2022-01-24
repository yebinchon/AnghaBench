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
struct kiocb {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 

__attribute__((used)) static inline void FUNC2(struct kiocb *iocb, int level)
{
	FUNC1(0, (unsigned long *)&iocb->private);
	if (level)
		FUNC1(1, (unsigned long *)&iocb->private);
	else
		FUNC0(1, (unsigned long *)&iocb->private);
}