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
struct module {int dummy; } ;
struct TYPE_3__ {size_t pcpu; size_t mod; } ;
struct load_info {TYPE_1__ index; TYPE_2__* sechdrs; int /*<<< orphan*/  mod; int /*<<< orphan*/  secstrings; int /*<<< orphan*/  hdr; } ;
struct TYPE_4__ {unsigned long sh_flags; scalar_t__ sh_addr; } ;

/* Variables and functions */
 struct module* FUNC0 (int) ; 
 scalar_t__ SHF_ALLOC ; 
 unsigned long SHF_RO_AFTER_INIT ; 
 int FUNC1 (int /*<<< orphan*/ ,struct load_info*,int) ; 
 unsigned int FUNC2 (struct load_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*,struct load_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct load_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct load_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct load_info*) ; 

__attribute__((used)) static struct module *FUNC8(struct load_info *info, int flags)
{
	struct module *mod;
	unsigned int ndx;
	int err;

	err = FUNC1(info->mod, info, flags);
	if (err)
		return FUNC0(err);

	/* Allow arches to frob section contents and sizes.  */
	err = FUNC6(info->hdr, info->sechdrs,
					info->secstrings, info->mod);
	if (err < 0)
		return FUNC0(err);

	/* We will do a special allocation for per-cpu sections later. */
	info->sechdrs[info->index.pcpu].sh_flags &= ~(unsigned long)SHF_ALLOC;

	/*
	 * Mark ro_after_init section with SHF_RO_AFTER_INIT so that
	 * layout_sections() can put it in the right place.
	 * Note: ro_after_init sections also have SHF_{WRITE,ALLOC} set.
	 */
	ndx = FUNC2(info, ".data..ro_after_init");
	if (ndx)
		info->sechdrs[ndx].sh_flags |= SHF_RO_AFTER_INIT;
	/*
	 * Mark the __jump_table section as ro_after_init as well: these data
	 * structures are never modified, with the exception of entries that
	 * refer to code in the __init section, which are annotated as such
	 * at module load time.
	 */
	ndx = FUNC2(info, "__jump_table");
	if (ndx)
		info->sechdrs[ndx].sh_flags |= SHF_RO_AFTER_INIT;

	/* Determine total sizes, and put offsets in sh_entsize.  For now
	   this is done generically; there doesn't appear to be any
	   special cases for the architectures. */
	FUNC4(info->mod, info);
	FUNC5(info->mod, info);

	/* Allocate and move to the final place */
	err = FUNC7(info->mod, info);
	if (err)
		return FUNC0(err);

	/* Module has been copied to its final place now: return it. */
	mod = (void *)info->sechdrs[info->index.mod].sh_addr;
	FUNC3(mod, info);
	return mod;
}