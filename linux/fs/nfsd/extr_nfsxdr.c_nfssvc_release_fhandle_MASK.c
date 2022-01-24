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
struct svc_rqst {struct nfsd_fhandle* rq_resp; } ;
struct nfsd_fhandle {int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct svc_rqst *rqstp)
{
	struct nfsd_fhandle *resp = rqstp->rq_resp;

	FUNC0(&resp->fh);
}