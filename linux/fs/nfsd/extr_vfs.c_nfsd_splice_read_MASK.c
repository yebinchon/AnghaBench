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
struct svc_rqst {scalar_t__ rq_respages; scalar_t__ rq_next_page; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {struct svc_rqst* data; } ;
struct splice_desc {unsigned long total_len; TYPE_1__ u; int /*<<< orphan*/  pos; int /*<<< orphan*/  len; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  nfsd_direct_splice_actor ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct splice_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 

__be32 FUNC3(struct svc_rqst *rqstp, struct svc_fh *fhp,
			struct file *file, loff_t offset, unsigned long *count,
			u32 *eof)
{
	struct splice_desc sd = {
		.len		= 0,
		.total_len	= *count,
		.pos		= offset,
		.u.data		= rqstp,
	};
	ssize_t host_err;

	FUNC2(rqstp, fhp, offset, *count);
	rqstp->rq_next_page = rqstp->rq_respages + 1;
	host_err = FUNC1(file, &sd, nfsd_direct_splice_actor);
	return FUNC0(rqstp, fhp, file, offset, count, eof, host_err);
}