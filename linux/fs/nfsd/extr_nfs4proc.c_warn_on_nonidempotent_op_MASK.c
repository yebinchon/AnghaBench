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
struct nfsd4_op {int /*<<< orphan*/  opnum; } ;
struct TYPE_2__ {int op_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nfsd4_op*) ; 
 int OP_MODIFIES_SOMETHING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct nfsd4_op *op)
{
	if (FUNC0(op)->op_flags & OP_MODIFIES_SOMETHING) {
		FUNC3("unable to encode reply to nonidempotent op %d (%s)\n",
			op->opnum, FUNC2(op->opnum));
		FUNC1(1);
	}
}