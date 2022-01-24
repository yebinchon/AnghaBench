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
struct xdr_netobj {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct rsc {int /*<<< orphan*/  h; int /*<<< orphan*/  mechctx; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_SEQ_WIN ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_detail*) ; 
 struct rsc* FUNC1 (struct cache_detail*,struct xdr_netobj*) ; 
 int FUNC2 (struct svc_rqst*) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct cache_detail *cd, struct svc_rqst *rqstp,
		struct xdr_netobj *out_handle, int *major_status)
{
	struct rsc *rsci;
	int        rc;

	if (*major_status != GSS_S_COMPLETE)
		return FUNC2(rqstp);
	rsci = FUNC1(cd, out_handle);
	if (rsci == NULL) {
		*major_status = GSS_S_NO_CONTEXT;
		return FUNC2(rqstp);
	}
	rc = FUNC3(rqstp, rsci->mechctx, GSS_SEQ_WIN);
	FUNC0(&rsci->h, cd);
	return rc;
}