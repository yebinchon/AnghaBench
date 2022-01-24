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
struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_host {int dummy; } ;
struct nlm_args {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_host*) ; 
 scalar_t__ FUNC2 (struct svc_rqst*,struct nlm_args*,struct nlm_host**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_success ; 

__attribute__((used)) static __be32
FUNC3(struct svc_rqst *rqstp)
{
	struct nlm_args *argp = rqstp->rq_argp;
	struct nlm_host	*host;

	/* Obtain client */
	if (FUNC2(rqstp, argp, &host, NULL))
		return rpc_success;

	FUNC0(host);
	FUNC1(host);
	return rpc_success;
}