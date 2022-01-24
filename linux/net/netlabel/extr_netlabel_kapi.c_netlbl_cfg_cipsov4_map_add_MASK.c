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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {void* type; struct netlbl_domaddr_map* addrsel; struct cipso_v4_doi* cipso; } ;
struct TYPE_4__ {int addr; int mask; int valid; } ;
struct netlbl_domaddr_map {struct netlbl_domaddr_map* domain; TYPE_1__ def; int /*<<< orphan*/  list4; TYPE_2__ list; int /*<<< orphan*/  list6; int /*<<< orphan*/  family; } ;
struct netlbl_domaddr4_map {struct netlbl_domaddr4_map* domain; TYPE_1__ def; int /*<<< orphan*/  list4; TYPE_2__ list; int /*<<< orphan*/  list6; int /*<<< orphan*/  family; } ;
struct netlbl_dom_map {struct netlbl_dom_map* domain; TYPE_1__ def; int /*<<< orphan*/  list4; TYPE_2__ list; int /*<<< orphan*/  list6; int /*<<< orphan*/  family; } ;
struct netlbl_audit {int dummy; } ;
struct in_addr {int s_addr; } ;
struct cipso_v4_doi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* NETLBL_NLTYPE_ADDRSELECT ; 
 void* NETLBL_NLTYPE_CIPSOV4 ; 
 struct cipso_v4_doi* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cipso_v4_doi*) ; 
 int /*<<< orphan*/  FUNC3 (struct netlbl_domaddr_map*) ; 
 struct netlbl_domaddr_map* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct netlbl_domaddr_map* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct netlbl_domaddr_map*,struct netlbl_audit*) ; 

int FUNC8(u32 doi,
			       const char *domain,
			       const struct in_addr *addr,
			       const struct in_addr *mask,
			       struct netlbl_audit *audit_info)
{
	int ret_val = -ENOMEM;
	struct cipso_v4_doi *doi_def;
	struct netlbl_dom_map *entry;
	struct netlbl_domaddr_map *addrmap = NULL;
	struct netlbl_domaddr4_map *addrinfo = NULL;

	doi_def = FUNC1(doi);
	if (doi_def == NULL)
		return -ENOENT;

	entry = FUNC5(sizeof(*entry), GFP_ATOMIC);
	if (entry == NULL)
		goto out_entry;
	entry->family = AF_INET;
	if (domain != NULL) {
		entry->domain = FUNC4(domain, GFP_ATOMIC);
		if (entry->domain == NULL)
			goto out_domain;
	}

	if (addr == NULL && mask == NULL) {
		entry->def.cipso = doi_def;
		entry->def.type = NETLBL_NLTYPE_CIPSOV4;
	} else if (addr != NULL && mask != NULL) {
		addrmap = FUNC5(sizeof(*addrmap), GFP_ATOMIC);
		if (addrmap == NULL)
			goto out_addrmap;
		FUNC0(&addrmap->list4);
		FUNC0(&addrmap->list6);

		addrinfo = FUNC5(sizeof(*addrinfo), GFP_ATOMIC);
		if (addrinfo == NULL)
			goto out_addrinfo;
		addrinfo->def.cipso = doi_def;
		addrinfo->def.type = NETLBL_NLTYPE_CIPSOV4;
		addrinfo->list.addr = addr->s_addr & mask->s_addr;
		addrinfo->list.mask = mask->s_addr;
		addrinfo->list.valid = 1;
		ret_val = FUNC6(&addrinfo->list, &addrmap->list4);
		if (ret_val != 0)
			goto cfg_cipsov4_map_add_failure;

		entry->def.addrsel = addrmap;
		entry->def.type = NETLBL_NLTYPE_ADDRSELECT;
	} else {
		ret_val = -EINVAL;
		goto out_addrmap;
	}

	ret_val = FUNC7(entry, audit_info);
	if (ret_val != 0)
		goto cfg_cipsov4_map_add_failure;

	return 0;

cfg_cipsov4_map_add_failure:
	FUNC3(addrinfo);
out_addrinfo:
	FUNC3(addrmap);
out_addrmap:
	FUNC3(entry->domain);
out_domain:
	FUNC3(entry);
out_entry:
	FUNC2(doi_def);
	return ret_val;
}