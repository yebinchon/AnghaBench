#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * bytes; } ;
struct TYPE_3__ {scalar_t__* bytes; } ;
struct insn {TYPE_2__ modrm; TYPE_1__ opcode; } ;

/* Variables and functions */
 scalar_t__ MOV_SREG_OPCODE ; 
 scalar_t__ POP_SS_OPCODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct insn *insn)
{
	return insn->opcode.bytes[0] == POP_SS_OPCODE ||
		(insn->opcode.bytes[0] == MOV_SREG_OPCODE &&
		 FUNC0(insn->modrm.bytes[0]) == 2);
}