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
struct netlbl_audit {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct calipso_doi {int /*<<< orphan*/  doi; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALIPSO_MAP_PASS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NLBL_CALIPSO_A_DOI ; 
 int FUNC0 (struct calipso_doi*,struct netlbl_audit*) ; 
 int /*<<< orphan*/  FUNC1 (struct calipso_doi*) ; 
 struct calipso_doi* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct genl_info *info,
				   struct netlbl_audit *audit_info)
{
	int ret_val;
	struct calipso_doi *doi_def = NULL;

	doi_def = FUNC2(sizeof(*doi_def), GFP_KERNEL);
	if (!doi_def)
		return -ENOMEM;
	doi_def->type = CALIPSO_MAP_PASS;
	doi_def->doi = FUNC3(info->attrs[NLBL_CALIPSO_A_DOI]);
	ret_val = FUNC0(doi_def, audit_info);
	if (ret_val != 0)
		FUNC1(doi_def);

	return ret_val;
}