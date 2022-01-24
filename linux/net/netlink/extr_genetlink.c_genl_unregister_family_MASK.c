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
struct genl_family {int /*<<< orphan*/  attrbuf; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_CMD_DELFAMILY ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cb_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct genl_family const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  genl_fam_idr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  genl_sk_destructing_cnt ; 
 int /*<<< orphan*/  genl_sk_destructing_waitq ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct genl_family const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

int FUNC11(const struct genl_family *family)
{
	FUNC3();

	if (!FUNC2(family->id)) {
		FUNC5();
		return -ENOENT;
	}

	FUNC6(family);

	FUNC7(&genl_fam_idr, family->id);

	FUNC9(&cb_lock);
	FUNC10(genl_sk_destructing_waitq,
		   FUNC0(&genl_sk_destructing_cnt) == 0);
	FUNC4();

	FUNC8(family->attrbuf);

	FUNC1(CTRL_CMD_DELFAMILY, family, NULL, 0);

	return 0;
}