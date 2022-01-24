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
typedef  scalar_t__ umode_t ;
struct svc_rqst {int rq_vers; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ i_mode; } ;

/* Variables and functions */
 scalar_t__ S_IFDIR ; 
 scalar_t__ S_IFLNK ; 
 scalar_t__ S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  nfserr_isdir ; 
 int /*<<< orphan*/  nfserr_notdir ; 
 int /*<<< orphan*/  nfserr_symlink ; 

__attribute__((used)) static inline __be32
FUNC3(struct svc_rqst *rqstp, struct dentry *dentry,
		umode_t requested)
{
	umode_t mode = FUNC2(dentry)->i_mode & S_IFMT;

	if (requested == 0) /* the caller doesn't care */
		return nfs_ok;
	if (mode == requested) {
		if (mode == S_IFDIR && !FUNC1(dentry)) {
			FUNC0(1);
			return nfserr_notdir;
		}
		return nfs_ok;
	}
	/*
	 * v4 has an error more specific than err_notdir which we should
	 * return in preference to err_notdir:
	 */
	if (rqstp->rq_vers == 4 && mode == S_IFLNK)
		return nfserr_symlink;
	if (requested == S_IFDIR)
		return nfserr_notdir;
	if (mode == S_IFDIR)
		return nfserr_isdir;
	return nfserr_inval;
}