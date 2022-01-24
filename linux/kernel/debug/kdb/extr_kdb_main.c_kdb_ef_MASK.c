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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int KDB_ARGCOUNT ; 
 int FUNC0 (int,char const**,int*,unsigned long*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC2(int argc, const char **argv)
{
	int diag;
	unsigned long addr;
	long offset;
	int nextarg;

	if (argc != 1)
		return KDB_ARGCOUNT;

	nextarg = 1;
	diag = FUNC0(argc, argv, &nextarg, &addr, &offset, NULL);
	if (diag)
		return diag;
	FUNC1((struct pt_regs *)addr);
	return 0;
}