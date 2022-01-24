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
struct cfg {int dummy; } ;
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfg*,struct bpf_insn*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg*,int /*<<< orphan*/ ,int) ; 

void FUNC4(void *buf, unsigned int len)
{
	struct bpf_insn *insn = buf;
	struct cfg cfg;

	FUNC3(&cfg, 0, sizeof(cfg));
	if (FUNC0(&cfg, insn, len))
		return;

	FUNC2(&cfg);

	FUNC1(&cfg);
}