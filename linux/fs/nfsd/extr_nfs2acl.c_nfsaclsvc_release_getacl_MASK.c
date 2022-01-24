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
struct svc_rqst {struct nfsd3_getaclres* rq_resp; } ;
struct nfsd3_getaclres {int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct svc_rqst *rqstp)
{
	struct nfsd3_getaclres *resp = rqstp->rq_resp;

	FUNC0(&resp->fh);
	FUNC1(resp->acl_access);
	FUNC1(resp->acl_default);
}