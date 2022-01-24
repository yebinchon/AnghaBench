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
struct TYPE_2__ {scalar_t__* bytes; } ;
struct insn {TYPE_1__ prefixes; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct insn*) ; 
 int FUNC2 (struct insn*) ; 

__attribute__((used)) static inline int FUNC3(struct insn *insn)
{
	if (FUNC1(insn))
		return FUNC2(insn);	/* VEX_p is a SIMD prefix id */

	if (insn->prefixes.bytes[3])
		return FUNC0(insn->prefixes.bytes[3]);

	return 0;
}