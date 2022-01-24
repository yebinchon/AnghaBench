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
struct svc_rqst {struct nfsd3_mknodargs* rq_argp; } ;
struct nfsd3_mknodargs {scalar_t__ ftype; void* minor; void* major; int /*<<< orphan*/  attrs; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NF3BLK ; 
 scalar_t__ NF3CHR ; 
 scalar_t__ NF3FIFO ; 
 scalar_t__ NF3SOCK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd3_mknodargs *args = rqstp->rq_argp;

	if (!(p = FUNC0(p, &args->fh))
	 || !(p = FUNC1(p, &args->name, &args->len)))
		return 0;

	args->ftype = FUNC4(*p++);

	if (args->ftype == NF3BLK  || args->ftype == NF3CHR
	 || args->ftype == NF3SOCK || args->ftype == NF3FIFO)
		p = FUNC2(p, &args->attrs, FUNC3(rqstp));

	if (args->ftype == NF3BLK || args->ftype == NF3CHR) {
		args->major = FUNC4(*p++);
		args->minor = FUNC4(*p++);
	}

	return FUNC5(rqstp, p);
}