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
struct cflayer {int dummy; } ;
struct cffrml {int /*<<< orphan*/ * pcpu_refcnt; } ;

/* Variables and functions */
 struct cffrml* FUNC0 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct cflayer *layr)
{
	struct cffrml *this = FUNC0(layr);
	if (layr != NULL && this->pcpu_refcnt != NULL)
		FUNC1(*this->pcpu_refcnt);
}