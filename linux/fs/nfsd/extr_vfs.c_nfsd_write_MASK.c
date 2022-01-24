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
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct kvec {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAY_WRITE ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd_file*) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvec*,int,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 

__be32
FUNC5(struct svc_rqst *rqstp, struct svc_fh *fhp, loff_t offset,
	   struct kvec *vec, int vlen, unsigned long *cnt, int stable)
{
	struct nfsd_file *nf;
	__be32 err;

	FUNC4(rqstp, fhp, offset, *cnt);

	err = FUNC0(rqstp, fhp, NFSD_MAY_WRITE, &nf);
	if (err)
		goto out;

	err = FUNC2(rqstp, fhp, nf->nf_file, offset, vec,
			vlen, cnt, stable);
	FUNC1(nf);
out:
	FUNC3(rqstp, fhp, offset, *cnt);
	return err;
}