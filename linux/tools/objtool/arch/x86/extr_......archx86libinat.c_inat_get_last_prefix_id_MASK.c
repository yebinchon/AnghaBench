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
typedef  int /*<<< orphan*/  insn_byte_t ;
typedef  int /*<<< orphan*/  insn_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(insn_byte_t last_pfx)
{
	insn_attr_t lpfx_attr;

	lpfx_attr = FUNC0(last_pfx);
	return FUNC1(lpfx_attr);
}