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
typedef  int u32 ;
struct bpf_prog {int insnsi; int len; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

int FUNC3(struct bpf_prog *prog, u32 off, u32 cnt)
{
	/* Branch offsets can't overflow when program is shrinking, no need
	 * to call bpf_adj_branches(..., true) here
	 */
	FUNC2(prog->insnsi + off, prog->insnsi + off + cnt,
		sizeof(struct bpf_insn) * (prog->len - off - cnt));
	prog->len -= cnt;

	return FUNC0(FUNC1(prog, off, off + cnt, off, false));
}