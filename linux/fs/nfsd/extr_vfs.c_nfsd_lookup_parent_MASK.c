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
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct svc_export {TYPE_1__ ex_path; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int FUNC1 (struct svc_export*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 struct svc_export* FUNC7 (struct svc_rqst*,struct path*) ; 

__attribute__((used)) static int FUNC8(struct svc_rqst *rqstp, struct dentry *dparent, struct svc_export **exp, struct dentry **dentryp)
{
	struct svc_export *exp2;
	struct path path = {.mnt = FUNC5((*exp)->ex_path.mnt),
			    .dentry = FUNC2(dparent)};

	FUNC4(&path);

	exp2 = FUNC7(rqstp, &path);
	if (FUNC1(exp2) == -ENOENT) {
		*dentryp = FUNC2(dparent);
	} else if (FUNC0(exp2)) {
		FUNC6(&path);
		return FUNC1(exp2);
	} else {
		*dentryp = FUNC2(path.dentry);
		FUNC3(*exp);
		*exp = exp2;
	}
	FUNC6(&path);
	return 0;
}