#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct svc_rqst {TYPE_1__ rq_arg; int /*<<< orphan*/  rq_vers; int /*<<< orphan*/  rq_prot; int /*<<< orphan*/  rq_proc; int /*<<< orphan*/  rq_xid; } ;
struct TYPE_4__ {int /*<<< orphan*/  k_csum; int /*<<< orphan*/  k_len; int /*<<< orphan*/  k_vers; int /*<<< orphan*/  k_prot; int /*<<< orphan*/  k_addr; int /*<<< orphan*/  k_proc; int /*<<< orphan*/  k_xid; } ;
struct svc_cacherep {TYPE_2__ c_key; int /*<<< orphan*/  c_lru; int /*<<< orphan*/  c_node; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_state; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  drc_slab; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RC_NOCACHE ; 
 int /*<<< orphan*/  RC_UNUSED ; 
 struct svc_cacherep* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*) ; 

__attribute__((used)) static struct svc_cacherep *
FUNC8(struct svc_rqst *rqstp, __wsum csum,
			struct nfsd_net *nn)
{
	struct svc_cacherep	*rp;

	rp = FUNC2(nn->drc_slab, GFP_KERNEL);
	if (rp) {
		rp->c_state = RC_UNUSED;
		rp->c_type = RC_NOCACHE;
		FUNC1(&rp->c_node);
		FUNC0(&rp->c_lru);

		FUNC3(&rp->c_key, 0, sizeof(rp->c_key));
		rp->c_key.k_xid = rqstp->rq_xid;
		rp->c_key.k_proc = rqstp->rq_proc;
		FUNC4((struct sockaddr *)&rp->c_key.k_addr, FUNC7(rqstp));
		FUNC6((struct sockaddr *)&rp->c_key.k_addr, FUNC5(FUNC7(rqstp)));
		rp->c_key.k_prot = rqstp->rq_prot;
		rp->c_key.k_vers = rqstp->rq_vers;
		rp->c_key.k_len = rqstp->rq_arg.len;
		rp->c_key.k_csum = csum;
	}
	return rp;
}