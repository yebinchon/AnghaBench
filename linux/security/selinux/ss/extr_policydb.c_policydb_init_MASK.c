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
struct policydb {TYPE_1__* symtab; void* range_tr; void* filename_trans; int /*<<< orphan*/  permissive_map; int /*<<< orphan*/  policycaps; int /*<<< orphan*/  filename_trans_ttypes; int /*<<< orphan*/  te_avtab; } ;
struct TYPE_2__ {void* table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SYM_NUM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct policydb*) ; 
 int /*<<< orphan*/ * destroy_f ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filenametr_cmp ; 
 int /*<<< orphan*/  filenametr_hash ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct policydb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rangetr_cmp ; 
 int /*<<< orphan*/  rangetr_hash ; 
 int FUNC7 (struct policydb*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * symtab_sizes ; 

__attribute__((used)) static int FUNC9(struct policydb *p)
{
	int i, rc;

	FUNC6(p, 0, sizeof(*p));

	for (i = 0; i < SYM_NUM; i++) {
		rc = FUNC8(&p->symtab[i], symtab_sizes[i]);
		if (rc)
			goto out;
	}

	rc = FUNC0(&p->te_avtab);
	if (rc)
		goto out;

	rc = FUNC7(p);
	if (rc)
		goto out;

	rc = FUNC1(p);
	if (rc)
		goto out;

	p->filename_trans = FUNC3(filenametr_hash, filenametr_cmp,
					   (1 << 10));
	if (!p->filename_trans) {
		rc = -ENOMEM;
		goto out;
	}

	p->range_tr = FUNC3(rangetr_hash, rangetr_cmp, 256);
	if (!p->range_tr) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC2(&p->filename_trans_ttypes);
	FUNC2(&p->policycaps);
	FUNC2(&p->permissive_map);

	return 0;
out:
	FUNC4(p->filename_trans);
	FUNC4(p->range_tr);
	for (i = 0; i < SYM_NUM; i++) {
		FUNC5(p->symtab[i].table, destroy_f[i], NULL);
		FUNC4(p->symtab[i].table);
	}
	return rc;
}