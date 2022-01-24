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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int /*<<< orphan*/  rq_flags; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {struct file* nf_file; } ;
struct kvec {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ splice_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_READ ; 
 int /*<<< orphan*/  RQ_SPLICE_OK ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd_file*) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,struct kvec*,int,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 

__be32 FUNC7(struct svc_rqst *rqstp, struct svc_fh *fhp,
	loff_t offset, struct kvec *vec, int vlen, unsigned long *count,
	u32 *eof)
{
	struct nfsd_file	*nf;
	struct file *file;
	__be32 err;

	FUNC6(rqstp, fhp, offset, *count);
	err = FUNC0(rqstp, fhp, NFSD_MAY_READ, &nf);
	if (err)
		return err;

	file = nf->nf_file;
	if (file->f_op->splice_read && FUNC4(RQ_SPLICE_OK, &rqstp->rq_flags))
		err = FUNC3(rqstp, fhp, file, offset, count, eof);
	else
		err = FUNC2(rqstp, fhp, file, offset, vec, vlen, count, eof);

	FUNC1(nf);

	FUNC5(rqstp, fhp, offset, *count);

	return err;
}