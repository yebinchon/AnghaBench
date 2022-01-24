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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct user_namespace {int dummy; } ;
struct timespec {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kstat {int mode; scalar_t__ size; int ino; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  rdev; scalar_t__ blocks; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; scalar_t__ nlink; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFS3_MAXPATHLEN ; 
 int S_IALLUGO ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct svc_fh*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs3_ftypes ; 
 struct user_namespace* FUNC8 (struct svc_rqst*) ; 
 struct timespec FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __be32 *
FUNC11(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp,
	      struct kstat *stat)
{
	struct user_namespace *userns = FUNC8(rqstp);
	struct timespec ts;
	*p++ = FUNC7(nfs3_ftypes[(stat->mode & S_IFMT) >> 12]);
	*p++ = FUNC7((u32) (stat->mode & S_IALLUGO));
	*p++ = FUNC7((u32) stat->nlink);
	*p++ = FUNC7((u32) FUNC6(userns, stat->uid));
	*p++ = FUNC7((u32) FUNC5(userns, stat->gid));
	if (FUNC2(stat->mode) && stat->size > NFS3_MAXPATHLEN) {
		p = FUNC10(p, (u64) NFS3_MAXPATHLEN);
	} else {
		p = FUNC10(p, (u64) stat->size);
	}
	p = FUNC10(p, ((u64)stat->blocks) << 9);
	*p++ = FUNC7((u32) FUNC0(stat->rdev));
	*p++ = FUNC7((u32) FUNC1(stat->rdev));
	p = FUNC3(p, fhp);
	p = FUNC10(p, stat->ino);
	ts = FUNC9(stat->atime);
	p = FUNC4(p, &ts);
	ts = FUNC9(stat->mtime);
	p = FUNC4(p, &ts);
	ts = FUNC9(stat->ctime);
	p = FUNC4(p, &ts);

	return p;
}