#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct policydb_compat_info {size_t sym_num; size_t ocon_num; } ;
struct TYPE_5__ {unsigned int nprim; } ;
struct ebitmap {int dummy; } ;
struct policydb {size_t policyvers; struct ebitmap* type_attr_map_array; TYPE_2__ p_types; int /*<<< orphan*/  role_allow; int /*<<< orphan*/  cond_list; int /*<<< orphan*/  te_avtab; TYPE_1__* symtab; struct ebitmap permissive_map; struct ebitmap policycaps; scalar_t__ allow_unknown; scalar_t__ reject_unknown; scalar_t__ mls_enabled; } ;
struct policy_data {struct policydb* p; void* fp; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {size_t nel; } ;
struct TYPE_4__ {size_t nprim; TYPE_3__* table; } ;

/* Variables and functions */
 size_t ALLOW_UNKNOWN ; 
 int EINVAL ; 
 size_t POLICYDB_CONFIG_MLS ; 
 size_t POLICYDB_MAGIC ; 
 int /*<<< orphan*/ * POLICYDB_STRING ; 
 size_t POLICYDB_VERSION_AVTAB ; 
 size_t POLICYDB_VERSION_PERMISSIVE ; 
 size_t POLICYDB_VERSION_POLCAP ; 
 size_t REJECT_UNKNOWN ; 
 int FUNC0 (struct policydb*,int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (struct policydb*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (struct ebitmap*,void*) ; 
 int FUNC4 (struct policydb*,void*) ; 
 int FUNC5 (struct policydb*,void*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,struct policy_data*) ; 
 int FUNC7 (struct policydb*,struct policydb_compat_info*,void*) ; 
 struct policydb_compat_info* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,...) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,void*) ; 
 int FUNC11 (struct policydb*,void*) ; 
 int FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int FUNC13 (struct policydb*,void*) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * write_f ; 

int FUNC15(struct policydb *p, void *fp)
{
	unsigned int i, num_syms;
	int rc;
	__le32 buf[4];
	u32 config;
	size_t len;
	struct policydb_compat_info *info;

	/*
	 * refuse to write policy older than compressed avtab
	 * to simplify the writer.  There are other tests dropped
	 * since we assume this throughout the writer code.  Be
	 * careful if you ever try to remove this restriction
	 */
	if (p->policyvers < POLICYDB_VERSION_AVTAB) {
		FUNC9("SELinux: refusing to write policy version %d."
		       "  Because it is less than version %d\n", p->policyvers,
		       POLICYDB_VERSION_AVTAB);
		return -EINVAL;
	}

	config = 0;
	if (p->mls_enabled)
		config |= POLICYDB_CONFIG_MLS;

	if (p->reject_unknown)
		config |= REJECT_UNKNOWN;
	if (p->allow_unknown)
		config |= ALLOW_UNKNOWN;

	/* Write the magic number and string identifiers. */
	buf[0] = FUNC2(POLICYDB_MAGIC);
	len = FUNC14(POLICYDB_STRING);
	buf[1] = FUNC2(len);
	rc = FUNC10(buf, sizeof(u32), 2, fp);
	if (rc)
		return rc;
	rc = FUNC10(POLICYDB_STRING, 1, len, fp);
	if (rc)
		return rc;

	/* Write the version, config, and table sizes. */
	info = FUNC8(p->policyvers);
	if (!info) {
		FUNC9("SELinux: compatibility lookup failed for policy "
		    "version %d", p->policyvers);
		return -EINVAL;
	}

	buf[0] = FUNC2(p->policyvers);
	buf[1] = FUNC2(config);
	buf[2] = FUNC2(info->sym_num);
	buf[3] = FUNC2(info->ocon_num);

	rc = FUNC10(buf, sizeof(u32), 4, fp);
	if (rc)
		return rc;

	if (p->policyvers >= POLICYDB_VERSION_POLCAP) {
		rc = FUNC3(&p->policycaps, fp);
		if (rc)
			return rc;
	}

	if (p->policyvers >= POLICYDB_VERSION_PERMISSIVE) {
		rc = FUNC3(&p->permissive_map, fp);
		if (rc)
			return rc;
	}

	num_syms = info->sym_num;
	for (i = 0; i < num_syms; i++) {
		struct policy_data pd;

		pd.fp = fp;
		pd.p = p;

		buf[0] = FUNC2(p->symtab[i].nprim);
		buf[1] = FUNC2(p->symtab[i].table->nel);

		rc = FUNC10(buf, sizeof(u32), 2, fp);
		if (rc)
			return rc;
		rc = FUNC6(p->symtab[i].table, write_f[i], &pd);
		if (rc)
			return rc;
	}

	rc = FUNC0(p, &p->te_avtab, fp);
	if (rc)
		return rc;

	rc = FUNC1(p, p->cond_list, fp);
	if (rc)
		return rc;

	rc = FUNC13(p, fp);
	if (rc)
		return rc;

	rc = FUNC12(p->role_allow, fp);
	if (rc)
		return rc;

	rc = FUNC4(p, fp);
	if (rc)
		return rc;

	rc = FUNC7(p, info, fp);
	if (rc)
		return rc;

	rc = FUNC5(p, fp);
	if (rc)
		return rc;

	rc = FUNC11(p, fp);
	if (rc)
		return rc;

	for (i = 0; i < p->p_types.nprim; i++) {
		struct ebitmap *e = &p->type_attr_map_array[i];

		rc = FUNC3(e, fp);
		if (rc)
			return rc;
	}

	return 0;
}