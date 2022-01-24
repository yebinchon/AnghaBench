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
struct coredump_params {int pos; } ;

/* Variables and functions */
 int FUNC0 (struct coredump_params*,int) ; 

int FUNC1(struct coredump_params *cprm, int align)
{
	unsigned mod = cprm->pos & (align - 1);
	if (align & (align - 1))
		return 0;
	return mod ? FUNC0(cprm, align - mod) : 1;
}