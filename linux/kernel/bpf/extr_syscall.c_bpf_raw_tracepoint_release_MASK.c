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
struct inode {int dummy; } ;
struct file {struct bpf_raw_tracepoint* private_data; } ;
struct bpf_raw_tracepoint {int /*<<< orphan*/  btp; scalar_t__ prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_raw_tracepoint*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct bpf_raw_tracepoint *raw_tp = filp->private_data;

	if (raw_tp->prog) {
		FUNC0(raw_tp->btp, raw_tp->prog);
		FUNC1(raw_tp->prog);
	}
	FUNC2(raw_tp->btp);
	FUNC3(raw_tp);
	return 0;
}