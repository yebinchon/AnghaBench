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
struct mls_level {int /*<<< orphan*/  cat; int /*<<< orphan*/  sens; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mls_level*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct mls_level *lp, void *fp)
{
	__le32 buf[1];
	int rc;

	FUNC2(lp, 0, sizeof(*lp));

	rc = FUNC3(buf, fp, sizeof buf);
	if (rc) {
		FUNC4("SELinux: mls: truncated level\n");
		return rc;
	}
	lp->sens = FUNC1(buf[0]);

	rc = FUNC0(&lp->cat, fp);
	if (rc) {
		FUNC4("SELinux: mls:  error reading level categories\n");
		return rc;
	}
	return 0;
}