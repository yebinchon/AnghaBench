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
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_dentry; TYPE_2__* fh_export; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
typedef  int __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  NFSD_MAY_NOP ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  done ; 
 int FUNC5 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int nfserr_inval ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 
 scalar_t__ FUNC10 (int) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__be32
FUNC12(struct svc_rqst *rqstp, struct svc_fh *fhp, char *buf, int *lenp)
{
	__be32		err;
	const char *link;
	struct path path;
	FUNC0(done);
	int len;

	err = FUNC5(rqstp, fhp, S_IFLNK, NFSD_MAY_NOP);
	if (FUNC10(err))
		return err;

	path.mnt = fhp->fh_export->ex_path.mnt;
	path.dentry = fhp->fh_dentry;

	if (FUNC10(!FUNC3(path.dentry)))
		return nfserr_inval;

	FUNC9(&path);

	link = FUNC11(path.dentry, &done);
	if (FUNC1(link))
		return FUNC7(FUNC2(link));

	len = FUNC8(link);
	if (len < *lenp)
		*lenp = len;
	FUNC6(buf, link, *lenp);
	FUNC4(&done);
	return 0;
}