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
struct fetch_type {int /*<<< orphan*/  size; } ;
struct fetch_insn {scalar_t__ op; unsigned long lshift; unsigned long rshift; int /*<<< orphan*/  basesize; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FETCH_OP_MOD_BF ; 
 scalar_t__ FETCH_OP_NOP ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *bf,
				      const struct fetch_type *t,
				      struct fetch_insn **pcode)
{
	struct fetch_insn *code = *pcode;
	unsigned long bw, bo;
	char *tail;

	if (*bf != 'b')
		return 0;

	bw = FUNC1(bf + 1, &tail, 0);	/* Use simple one */

	if (bw == 0 || *tail != '@')
		return -EINVAL;

	bf = tail + 1;
	bo = FUNC1(bf, &tail, 0);

	if (tail == bf || *tail != '/')
		return -EINVAL;
	code++;
	if (code->op != FETCH_OP_NOP)
		return -EINVAL;
	*pcode = code;

	code->op = FETCH_OP_MOD_BF;
	code->lshift = FUNC0(t->size) - (bw + bo);
	code->rshift = FUNC0(t->size) - bw;
	code->basesize = t->size;

	return (FUNC0(t->size) < (bw + bo)) ? -EINVAL : 0;
}