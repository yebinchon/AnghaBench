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
struct aio_kiocb {int /*<<< orphan*/  ki_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aio_kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct aio_kiocb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct aio_kiocb *iocb)
{
	if (FUNC2(&iocb->ki_refcnt)) {
		FUNC0(iocb);
		FUNC1(iocb);
	}
}