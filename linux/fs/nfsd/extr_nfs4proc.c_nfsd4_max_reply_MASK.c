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
struct svc_rqst {int dummy; } ;
struct nfsd4_op {scalar_t__ opnum; scalar_t__ status; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int (* op_rsize_bop ) (struct svc_rqst*,struct nfsd4_op*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct nfsd4_op*) ; 
 scalar_t__ OP_ILLEGAL ; 
 scalar_t__ nfserr_notsupp ; 
 int op_encode_hdr_size ; 
 int FUNC2 (struct svc_rqst*,struct nfsd4_op*) ; 

int FUNC3(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
	if (op->opnum == OP_ILLEGAL || op->status == nfserr_notsupp)
		return op_encode_hdr_size * sizeof(__be32);

	FUNC0(FUNC1(op)->op_rsize_bop == NULL);
	return FUNC1(op)->op_rsize_bop(rqstp, op);
}