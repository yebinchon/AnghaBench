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
struct super_block {int dummy; } ;
struct code_page_directory {TYPE_1__* array; int /*<<< orphan*/  n_code_pages; int /*<<< orphan*/  magic; } ;
struct code_page_data {int /*<<< orphan*/ * offs; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ secno ;
struct TYPE_2__ {int /*<<< orphan*/  index; int /*<<< orphan*/  code_page_data; } ;

/* Variables and functions */
 scalar_t__ CP_DIR_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (struct super_block*,scalar_t__,struct buffer_head**,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

unsigned char *FUNC7(struct super_block *s, secno cps)
{
	struct buffer_head *bh;
	secno cpds;
	unsigned cpi;
	unsigned char *ptr;
	unsigned char *cp_table;
	int i;
	struct code_page_data *cpd;
	struct code_page_directory *cp = FUNC1(s, cps, &bh, 0);
	if (!cp) return NULL;
	if (FUNC4(cp->magic) != CP_DIR_MAGIC) {
		FUNC6("Code page directory magic doesn't match (magic = %08x)\n",
			FUNC4(cp->magic));
		FUNC0(bh);
		return NULL;
	}
	if (!FUNC4(cp->n_code_pages)) {
		FUNC6("n_code_pages == 0\n");
		FUNC0(bh);
		return NULL;
	}
	cpds = FUNC4(cp->array[0].code_page_data);
	cpi = FUNC3(cp->array[0].index);
	FUNC0(bh);

	if (cpi >= 3) {
		FUNC6("Code page index out of array\n");
		return NULL;
	}
	
	if (!(cpd = FUNC1(s, cpds, &bh, 0))) return NULL;
	if (FUNC3(cpd->offs[cpi]) > 0x178) {
		FUNC6("Code page index out of sector\n");
		FUNC0(bh);
		return NULL;
	}
	ptr = (unsigned char *)cpd + FUNC3(cpd->offs[cpi]) + 6;
	if (!(cp_table = FUNC2(256, GFP_KERNEL))) {
		FUNC6("out of memory for code page table\n");
		FUNC0(bh);
		return NULL;
	}
	FUNC5(cp_table, ptr, 128);
	FUNC0(bh);

	/* Try to build lowercasing table from uppercasing one */

	for (i=128; i<256; i++) cp_table[i]=i;
	for (i=128; i<256; i++) if (cp_table[i-128]!=i && cp_table[i-128]>=128)
		cp_table[cp_table[i-128]] = i;
	
	return cp_table;
}