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
struct svc_rqst {struct nfsd3_fhandle_pair* rq_resp; } ;
struct nfsd3_fhandle_pair {int /*<<< orphan*/  fh2; int /*<<< orphan*/  fh1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct svc_rqst *rqstp)
{
	struct nfsd3_fhandle_pair *resp = rqstp->rq_resp;

	FUNC0(&resp->fh1);
	FUNC0(&resp->fh2);
}