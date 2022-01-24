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
typedef  void* u64 ;
struct machine {int dummy; } ;
struct intel_pt_insn {int /*<<< orphan*/  buf; int /*<<< orphan*/  rel; int /*<<< orphan*/  length; int /*<<< orphan*/  branch; int /*<<< orphan*/  op; } ;
struct intel_pt_cache_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/  insn; int /*<<< orphan*/  rel; int /*<<< orphan*/  length; int /*<<< orphan*/  branch; int /*<<< orphan*/  op; void* byte_cnt; void* insn_cnt; } ;
struct dso {int dummy; } ;
struct auxtrace_cache {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTEL_PT_INSN_BUF_SZ ; 
 int FUNC0 (struct auxtrace_cache*,void*,int /*<<< orphan*/ *) ; 
 struct intel_pt_cache_entry* FUNC1 (struct auxtrace_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct auxtrace_cache*,struct intel_pt_cache_entry*) ; 
 struct auxtrace_cache* FUNC3 (struct dso*,struct machine*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dso *dso, struct machine *machine,
			      u64 offset, u64 insn_cnt, u64 byte_cnt,
			      struct intel_pt_insn *intel_pt_insn)
{
	struct auxtrace_cache *c = FUNC3(dso, machine);
	struct intel_pt_cache_entry *e;
	int err;

	if (!c)
		return -ENOMEM;

	e = FUNC1(c);
	if (!e)
		return -ENOMEM;

	e->insn_cnt = insn_cnt;
	e->byte_cnt = byte_cnt;
	e->op = intel_pt_insn->op;
	e->branch = intel_pt_insn->branch;
	e->length = intel_pt_insn->length;
	e->rel = intel_pt_insn->rel;
	FUNC4(e->insn, intel_pt_insn->buf, INTEL_PT_INSN_BUF_SZ);

	err = FUNC0(c, offset, &e->entry);
	if (err)
		FUNC2(c, e);

	return err;
}