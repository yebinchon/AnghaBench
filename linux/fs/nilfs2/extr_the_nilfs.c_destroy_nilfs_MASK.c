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
struct the_nilfs {int /*<<< orphan*/ * ns_sbh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC4 (struct the_nilfs*) ; 

void FUNC5(struct the_nilfs *nilfs)
{
	FUNC2();
	if (FUNC3(nilfs)) {
		FUNC4(nilfs);
		FUNC0(nilfs->ns_sbh[0]);
		FUNC0(nilfs->ns_sbh[1]);
	}
	FUNC1(nilfs);
}