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
typedef  int u32 ;
struct mls_range {TYPE_1__* level; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  cat; void* sens; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct mls_range *r, void *fp)
{
	__le32 buf[2];
	u32 items;
	int rc;

	rc = FUNC5(buf, fp, sizeof(u32));
	if (rc)
		goto out;

	rc = -EINVAL;
	items = FUNC4(buf[0]);
	if (items > FUNC0(buf)) {
		FUNC6("SELinux: mls:  range overflow\n");
		goto out;
	}

	rc = FUNC5(buf, fp, sizeof(u32) * items);
	if (rc) {
		FUNC6("SELinux: mls:  truncated range\n");
		goto out;
	}

	r->level[0].sens = FUNC4(buf[0]);
	if (items > 1)
		r->level[1].sens = FUNC4(buf[1]);
	else
		r->level[1].sens = r->level[0].sens;

	rc = FUNC3(&r->level[0].cat, fp);
	if (rc) {
		FUNC6("SELinux: mls:  error reading low categories\n");
		goto out;
	}
	if (items > 1) {
		rc = FUNC3(&r->level[1].cat, fp);
		if (rc) {
			FUNC6("SELinux: mls:  error reading high categories\n");
			goto bad_high;
		}
	} else {
		rc = FUNC1(&r->level[1].cat, &r->level[0].cat);
		if (rc) {
			FUNC6("SELinux: mls:  out of memory\n");
			goto bad_high;
		}
	}

	return 0;
bad_high:
	FUNC2(&r->level[0].cat);
out:
	return rc;
}