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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_fault {unsigned long address; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FRONTSWAP_PAGES_UNUSED ; 
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned char volatile SWAP_MAP_BAD ; 
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct swap_info_struct** swap_info ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_fault*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int FUNC12 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct vm_area_struct *vma, pmd_t *pmd,
			unsigned long addr, unsigned long end,
			unsigned int type, bool frontswap,
			unsigned long *fs_pages_to_unuse)
{
	struct page *page;
	swp_entry_t entry;
	pte_t *pte;
	struct swap_info_struct *si;
	unsigned long offset;
	int ret = 0;
	volatile unsigned char *swap_map;

	si = swap_info[type];
	pte = FUNC3(pmd, addr);
	do {
		struct vm_fault vmf;

		if (!FUNC1(*pte))
			continue;

		entry = FUNC4(*pte);
		if (FUNC9(entry) != type)
			continue;

		offset = FUNC8(entry);
		if (frontswap && !FUNC0(si, offset))
			continue;

		FUNC5(pte);
		swap_map = &si->swap_map[offset];
		vmf.vma = vma;
		vmf.address = addr;
		vmf.pmd = pmd;
		page = FUNC7(entry, GFP_HIGHUSER_MOVABLE, &vmf);
		if (!page) {
			if (*swap_map == 0 || *swap_map == SWAP_MAP_BAD)
				goto try_next;
			return -ENOMEM;
		}

		FUNC2(page);
		FUNC13(page);
		ret = FUNC12(vma, pmd, addr, entry, page);
		if (ret < 0) {
			FUNC11(page);
			FUNC6(page);
			goto out;
		}

		FUNC10(page);
		FUNC11(page);
		FUNC6(page);

		if (*fs_pages_to_unuse && !--(*fs_pages_to_unuse)) {
			ret = FRONTSWAP_PAGES_UNUSED;
			goto out;
		}
try_next:
		pte = FUNC3(pmd, addr);
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC5(pte - 1);

	ret = 0;
out:
	return ret;
}