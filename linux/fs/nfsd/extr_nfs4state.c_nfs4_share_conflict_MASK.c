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
struct svc_fh {int /*<<< orphan*/  fh_handle; } ;
struct nfs4_file {unsigned int fi_share_deny; int /*<<< orphan*/  fi_lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct nfs4_file* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_locked ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_fh *current_fh, unsigned int deny_type)
{
	struct nfs4_file *fp;
	__be32 ret = nfs_ok;

	fp = FUNC0(&current_fh->fh_handle);
	if (!fp)
		return ret;
	/* Check for conflicting share reservations */
	FUNC2(&fp->fi_lock);
	if (fp->fi_share_deny & deny_type)
		ret = nfserr_locked;
	FUNC3(&fp->fi_lock);
	FUNC1(fp);
	return ret;
}