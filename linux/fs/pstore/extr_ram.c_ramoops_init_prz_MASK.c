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
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct persistent_ram_zone*) ; 
 int /*<<< orphan*/  PRZ_FLAG_ZAP_OLD ; 
 int FUNC1 (struct persistent_ram_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,size_t,unsigned long long,int,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct persistent_ram_zone* FUNC4 (scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *name,
			    struct device *dev, struct ramoops_context *cxt,
			    struct persistent_ram_zone **prz,
			    phys_addr_t *paddr, size_t sz, u32 sig)
{
	char *label;

	if (!sz)
		return 0;

	if (*paddr + sz - cxt->phys_addr > cxt->size) {
		FUNC2(dev, "no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\n",
			name, sz, (unsigned long long)*paddr,
			cxt->size, (unsigned long long)cxt->phys_addr);
		return -ENOMEM;
	}

	label = FUNC3(GFP_KERNEL, "ramoops:%s", name);
	*prz = FUNC4(*paddr, sz, sig, &cxt->ecc_info,
				  cxt->memtype, PRZ_FLAG_ZAP_OLD, label);
	if (FUNC0(*prz)) {
		int err = FUNC1(*prz);

		FUNC2(dev, "failed to request %s mem region (0x%zx@0x%llx): %d\n",
			name, sz, (unsigned long long)*paddr, err);
		return err;
	}

	*paddr += sz;
	(*prz)->type = FUNC5(name);

	return 0;
}