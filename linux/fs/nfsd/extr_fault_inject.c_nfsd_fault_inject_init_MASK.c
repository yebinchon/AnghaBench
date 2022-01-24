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
typedef  int umode_t ;
struct nfsd_fault_inject_op {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct nfsd_fault_inject_op*) ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  debug_dir ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nfsd_fault_inject_op*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_nfsd ; 
 struct nfsd_fault_inject_op* inject_ops ; 

void FUNC3(void)
{
	unsigned int i;
	struct nfsd_fault_inject_op *op;
	umode_t mode = S_IFREG | S_IRUSR | S_IWUSR;

	debug_dir = FUNC1("nfsd", NULL);

	for (i = 0; i < FUNC0(inject_ops); i++) {
		op = &inject_ops[i];
		FUNC2(op->file, mode, debug_dir, op, &fops_nfsd);
	}
}