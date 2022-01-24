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
struct svc_rqst {int /*<<< orphan*/  rq_chandle; int /*<<< orphan*/ * rq_gssclient; int /*<<< orphan*/ * rq_client; } ;
struct svc_export {scalar_t__ ex_nflavors; } ;
struct path {int dummy; } ;
struct nfsd_net {struct cache_detail* svc_export_cache; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct svc_export* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*) ; 
 struct svc_export* FUNC4 (struct cache_detail*,int /*<<< orphan*/ *,struct path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_export*) ; 
 struct nfsd_net* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

struct svc_export *
FUNC7(struct svc_rqst *rqstp, struct path *path)
{
	struct svc_export *gssexp, *exp = FUNC0(-ENOENT);
	struct nfsd_net *nn = FUNC6(FUNC3(rqstp), nfsd_net_id);
	struct cache_detail *cd = nn->svc_export_cache;

	if (rqstp->rq_client == NULL)
		goto gss;

	/* First try the auth_unix client: */
	exp = FUNC4(cd, rqstp->rq_client, path, &rqstp->rq_chandle);
	if (FUNC2(exp) == -ENOENT)
		goto gss;
	if (FUNC1(exp))
		return exp;
	/* If it has secinfo, assume there are no gss/... clients */
	if (exp->ex_nflavors > 0)
		return exp;
gss:
	/* Otherwise, try falling back on gss client */
	if (rqstp->rq_gssclient == NULL)
		return exp;
	gssexp = FUNC4(cd, rqstp->rq_gssclient, path, &rqstp->rq_chandle);
	if (FUNC2(gssexp) == -ENOENT)
		return exp;
	if (!FUNC1(exp))
		FUNC5(exp);
	return gssexp;
}