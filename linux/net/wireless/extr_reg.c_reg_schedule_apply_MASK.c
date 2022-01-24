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
struct reg_regdb_apply_request {int /*<<< orphan*/  list; struct ieee80211_regdomain const* regdom; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_regdomain const*) ; 
 struct reg_regdb_apply_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_regdb_apply_list ; 
 int /*<<< orphan*/  reg_regdb_apply_mutex ; 
 int /*<<< orphan*/  reg_regdb_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct ieee80211_regdomain *regdom)
{
	struct reg_regdb_apply_request *request;

	request = FUNC1(sizeof(struct reg_regdb_apply_request), GFP_KERNEL);
	if (!request) {
		FUNC0(regdom);
		return -ENOMEM;
	}

	request->regdom = regdom;

	FUNC3(&reg_regdb_apply_mutex);
	FUNC2(&request->list, &reg_regdb_apply_list);
	FUNC4(&reg_regdb_apply_mutex);

	FUNC5(&reg_regdb_work);
	return 0;
}