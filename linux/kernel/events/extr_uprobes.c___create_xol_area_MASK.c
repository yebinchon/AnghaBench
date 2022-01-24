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
typedef  int /*<<< orphan*/  uprobe_opcode_t ;
struct TYPE_3__ {char* name; int /*<<< orphan*/ ** pages; int /*<<< orphan*/ * fault; } ;
struct xol_area {unsigned long vaddr; struct xol_area* bitmap; int /*<<< orphan*/ ** pages; int /*<<< orphan*/  slot_count; int /*<<< orphan*/  wq; TYPE_1__ xol_mapping; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UINSNS_PER_PAGE ; 
 int /*<<< orphan*/  UPROBE_SWBP_INSN ; 
 int /*<<< orphan*/  UPROBE_SWBP_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xol_area* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xol_area*) ; 
 struct xol_area* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct xol_area*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,struct xol_area*) ; 

__attribute__((used)) static struct xol_area *FUNC12(unsigned long vaddr)
{
	struct mm_struct *mm = current->mm;
	uprobe_opcode_t insn = UPROBE_SWBP_INSN;
	struct xol_area *area;

	area = FUNC8(sizeof(*area), GFP_KERNEL);
	if (FUNC10(!area))
		goto out;

	area->bitmap = FUNC6(FUNC0(UINSNS_PER_PAGE), sizeof(long),
			       GFP_KERNEL);
	if (!area->bitmap)
		goto free_area;

	area->xol_mapping.name = "[uprobes]";
	area->xol_mapping.fault = NULL;
	area->xol_mapping.pages = area->pages;
	area->pages[0] = FUNC2(GFP_HIGHUSER);
	if (!area->pages[0])
		goto free_bitmap;
	area->pages[1] = NULL;

	area->vaddr = vaddr;
	FUNC5(&area->wq);
	/* Reserve the 1st slot for get_trampoline_vaddr() */
	FUNC9(0, area->bitmap);
	FUNC4(&area->slot_count, 1);
	FUNC3(area->pages[0], 0, &insn, UPROBE_SWBP_INSN_SIZE);

	if (!FUNC11(mm, area))
		return area;

	FUNC1(area->pages[0]);
 free_bitmap:
	FUNC7(area->bitmap);
 free_area:
	FUNC7(area);
 out:
	return NULL;
}