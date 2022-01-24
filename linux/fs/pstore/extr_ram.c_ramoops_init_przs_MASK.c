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
typedef  int /*<<< orphan*/  u32 ;
struct ramoops_context {scalar_t__ phys_addr; scalar_t__ size; int /*<<< orphan*/  memtype; int /*<<< orphan*/  ecc_info; } ;
struct persistent_ram_zone {int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct persistent_ram_zone*) ; 
 int FUNC1 (struct persistent_ram_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct persistent_ram_zone** FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct persistent_ram_zone**) ; 
 int /*<<< orphan*/  FUNC6 (struct persistent_ram_zone*) ; 
 struct persistent_ram_zone* FUNC7 (scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *name,
			     struct device *dev, struct ramoops_context *cxt,
			     struct persistent_ram_zone ***przs,
			     phys_addr_t *paddr, size_t mem_sz,
			     ssize_t record_size,
			     unsigned int *cnt, u32 sig, u32 flags)
{
	int err = -ENOMEM;
	int i;
	size_t zone_sz;
	struct persistent_ram_zone **prz_ar;

	/* Allocate nothing for 0 mem_sz or 0 record_size. */
	if (mem_sz == 0 || record_size == 0) {
		*cnt = 0;
		return 0;
	}

	/*
	 * If we have a negative record size, calculate it based on
	 * mem_sz / *cnt. If we have a positive record size, calculate
	 * cnt from mem_sz / record_size.
	 */
	if (record_size < 0) {
		if (*cnt == 0)
			return 0;
		record_size = mem_sz / *cnt;
		if (record_size == 0) {
			FUNC2(dev, "%s record size == 0 (%zu / %u)\n",
				name, mem_sz, *cnt);
			goto fail;
		}
	} else {
		*cnt = mem_sz / record_size;
		if (*cnt == 0) {
			FUNC2(dev, "%s record count == 0 (%zu / %zu)\n",
				name, mem_sz, record_size);
			goto fail;
		}
	}

	if (*paddr + mem_sz - cxt->phys_addr > cxt->size) {
		FUNC2(dev, "no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
			name,
			mem_sz, (unsigned long long)*paddr,
			cxt->size, (unsigned long long)cxt->phys_addr);
		goto fail;
	}

	zone_sz = mem_sz / *cnt;
	if (!zone_sz) {
		FUNC2(dev, "%s zone size == 0\n", name);
		goto fail;
	}

	prz_ar = FUNC4(*cnt, sizeof(**przs), GFP_KERNEL);
	if (!prz_ar)
		goto fail;

	for (i = 0; i < *cnt; i++) {
		char *label;

		if (*cnt == 1)
			label = FUNC3(GFP_KERNEL, "ramoops:%s", name);
		else
			label = FUNC3(GFP_KERNEL, "ramoops:%s(%d/%d)",
					  name, i, *cnt - 1);
		prz_ar[i] = FUNC7(*paddr, zone_sz, sig,
					       &cxt->ecc_info,
					       cxt->memtype, flags, label);
		if (FUNC0(prz_ar[i])) {
			err = FUNC1(prz_ar[i]);
			FUNC2(dev, "failed to request %s mem region (0x%zx@0x%llx): %d\n",
				name, record_size,
				(unsigned long long)*paddr, err);

			while (i > 0) {
				i--;
				FUNC6(prz_ar[i]);
			}
			FUNC5(prz_ar);
			goto fail;
		}
		*paddr += zone_sz;
		prz_ar[i]->type = FUNC8(name);
	}

	*przs = prz_ar;
	return 0;

fail:
	*cnt = 0;
	return err;
}