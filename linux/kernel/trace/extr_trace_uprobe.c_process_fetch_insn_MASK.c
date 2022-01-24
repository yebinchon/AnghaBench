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
struct fetch_insn {int op; unsigned long immediate; scalar_t__ data; int /*<<< orphan*/  param; } ;

/* Variables and functions */
 int EILSEQ ; 
#define  FETCH_OP_COMM 135 
#define  FETCH_OP_DATA 134 
#define  FETCH_OP_FOFFS 133 
#define  FETCH_OP_IMM 132 
#define  FETCH_OP_REG 131 
#define  FETCH_OP_RETVAL 130 
#define  FETCH_OP_STACK 129 
#define  FETCH_OP_STACKP 128 
 unsigned long FETCH_TOKEN_COMM ; 
 unsigned long FUNC0 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fetch_insn*,unsigned long,void*,void*) ; 
 unsigned long FUNC2 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct pt_regs*) ; 
 unsigned long FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int
FUNC6(struct fetch_insn *code, struct pt_regs *regs, void *dest,
		   void *base)
{
	unsigned long val;

	/* 1st stage: get value from context */
	switch (code->op) {
	case FETCH_OP_REG:
		val = FUNC2(regs, code->param);
		break;
	case FETCH_OP_STACK:
		val = FUNC0(regs, code->param);
		break;
	case FETCH_OP_STACKP:
		val = FUNC5(regs);
		break;
	case FETCH_OP_RETVAL:
		val = FUNC3(regs);
		break;
	case FETCH_OP_IMM:
		val = code->immediate;
		break;
	case FETCH_OP_COMM:
		val = FETCH_TOKEN_COMM;
		break;
	case FETCH_OP_DATA:
		val = (unsigned long)code->data;
		break;
	case FETCH_OP_FOFFS:
		val = FUNC4(code->immediate);
		break;
	default:
		return -EILSEQ;
	}
	code++;

	return FUNC1(code, val, dest, base);
}