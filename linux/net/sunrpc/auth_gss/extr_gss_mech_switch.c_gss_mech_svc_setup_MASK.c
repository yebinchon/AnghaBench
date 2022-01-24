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
struct pf_desc {int /*<<< orphan*/ * auth_domain_name; int /*<<< orphan*/  pseudoflavor; int /*<<< orphan*/  name; } ;
struct gss_api_mech {int gm_pf_num; struct pf_desc* gm_pfs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct gss_api_mech*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct gss_api_mech *gm)
{
	struct pf_desc *pf;
	int i, status;

	for (i = 0; i < gm->gm_pf_num; i++) {
		pf = &gm->gm_pfs[i];
		pf->auth_domain_name = FUNC1(pf->name);
		status = -ENOMEM;
		if (pf->auth_domain_name == NULL)
			goto out;
		status = FUNC2(pf->pseudoflavor,
							pf->auth_domain_name);
		if (status)
			goto out;
	}
	return 0;
out:
	FUNC0(gm);
	return status;
}