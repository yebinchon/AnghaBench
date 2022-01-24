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
struct svc_rqst {int rq_vers; int /*<<< orphan*/  rq_flags; } ;
struct svc_fh {struct svc_export* fh_export; } ;
struct svc_export {int dummy; } ;
struct kvec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  rwf_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {unsigned int flags; } ;
struct TYPE_3__ {unsigned long io_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_export*) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int NFS_UNSTABLE ; 
 unsigned int PF_LESS_THROTTLE ; 
 int /*<<< orphan*/  RQ_LOCAL ; 
 int /*<<< orphan*/  RWF_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 
 int /*<<< orphan*/  WRITE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ nfsdstats ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC13 (struct file*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct file*) ; 

__be32
FUNC15(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file *file,
				loff_t offset, struct kvec *vec, int vlen,
				unsigned long *cnt, int stable)
{
	struct svc_export	*exp;
	struct iov_iter		iter;
	__be32			nfserr;
	int			host_err;
	int			use_wgather;
	loff_t			pos = offset;
	unsigned int		pflags = current->flags;
	rwf_t			flags = 0;

	FUNC12(rqstp, fhp, offset, *cnt);

	if (FUNC9(RQ_LOCAL, &rqstp->rq_flags))
		/*
		 * We want less throttling in balance_dirty_pages()
		 * and shrink_inactive_list() so that nfs to
		 * localhost doesn't cause nfsd to lock up due to all
		 * the client's dirty pages or its congested queue.
		 */
		current->flags |= PF_LESS_THROTTLE;

	exp = fhp->fh_export;
	use_wgather = (rqstp->rq_vers == 2) && FUNC1(exp);

	if (!FUNC0(exp))
		stable = NFS_UNSTABLE;

	if (stable && !use_wgather)
		flags |= RWF_SYNC;

	FUNC5(&iter, WRITE, vec, vlen, *cnt);
	host_err = FUNC13(file, &iter, &pos, flags);
	if (host_err < 0)
		goto out_nfserr;
	nfsdstats.io_write += *cnt;
	FUNC4(file);

	if (stable && use_wgather) {
		host_err = FUNC14(file);
		if (host_err < 0)
			FUNC7(FUNC6(FUNC2(rqstp),
						 nfsd_net_id));
	}

out_nfserr:
	if (host_err >= 0) {
		FUNC11(rqstp, fhp, offset, *cnt);
		nfserr = nfs_ok;
	} else {
		FUNC10(rqstp, fhp, offset, host_err);
		nfserr = FUNC8(host_err);
	}
	if (FUNC9(RQ_LOCAL, &rqstp->rq_flags))
		FUNC3(pflags, PF_LESS_THROTTLE);
	return nfserr;
}