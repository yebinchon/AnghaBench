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
struct svc_rqst {int rq_vers; } ;
struct svc_program {int dummy; } ;
struct TYPE_2__ {int lovers; int hivers; } ;
struct svc_process_info {TYPE_1__ mismatch; } ;
struct nfsd_net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFSD_MINVERS ; 
 int NFSD_NRVERS ; 
 int /*<<< orphan*/  NFSD_TEST ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct nfsd_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ FUNC3 (struct nfsd_net*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_prog_mismatch ; 
 int /*<<< orphan*/  rpc_prog_unavail ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct svc_program const*,struct svc_process_info*) ; 

__attribute__((used)) static __be32
FUNC5(struct svc_rqst *rqstp,
		  const struct svc_program *progp,
		  struct svc_process_info *ret)
{
	struct nfsd_net *nn = FUNC2(FUNC0(rqstp), nfsd_net_id);
	int i;

	if (FUNC1(FUNC3(nn, rqstp->rq_vers, NFSD_TEST)))
		return FUNC4(rqstp, progp, ret);

	ret->mismatch.lovers = NFSD_NRVERS;
	for (i = NFSD_MINVERS; i < NFSD_NRVERS; i++) {
		if (FUNC3(nn, i, NFSD_TEST)) {
			ret->mismatch.lovers = i;
			break;
		}
	}
	if (ret->mismatch.lovers == NFSD_NRVERS)
		return rpc_prog_unavail;
	ret->mismatch.hivers = NFSD_MINVERS;
	for (i = NFSD_NRVERS - 1; i >= NFSD_MINVERS; i--) {
		if (FUNC3(nn, i, NFSD_TEST)) {
			ret->mismatch.hivers = i;
			break;
		}
	}
	return rpc_prog_mismatch;
}