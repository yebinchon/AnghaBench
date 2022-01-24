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
typedef  int /*<<< orphan*/  u32 ;
struct svc_export {int /*<<< orphan*/  h; int /*<<< orphan*/  ek_path; } ;
struct svc_expkey {int /*<<< orphan*/  h; int /*<<< orphan*/  ek_path; } ;
struct nfsd_net {int /*<<< orphan*/  svc_expkey_cache; } ;
struct cache_req {int dummy; } ;
struct cache_detail {int /*<<< orphan*/  net; } ;
struct auth_domain {int dummy; } ;

/* Variables and functions */
 struct svc_export* FUNC0 (struct svc_export*) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct svc_export* FUNC3 (int /*<<< orphan*/ ,struct auth_domain*,int,int /*<<< orphan*/ *,struct cache_req*) ; 
 struct svc_export* FUNC4 (struct cache_detail*,struct auth_domain*,int /*<<< orphan*/ *,struct cache_req*) ; 
 struct nfsd_net* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

__attribute__((used)) static struct svc_export *FUNC6(struct cache_detail *cd,
				   struct auth_domain *clp, int fsid_type,
				   u32 *fsidv, struct cache_req *reqp)
{
	struct svc_export *exp;
	struct nfsd_net *nn = FUNC5(cd->net, nfsd_net_id);
	struct svc_expkey *ek = FUNC3(nn->svc_expkey_cache, clp, fsid_type, fsidv, reqp);
	if (FUNC1(ek))
		return FUNC0(ek);

	exp = FUNC4(cd, clp, &ek->ek_path, reqp);
	FUNC2(&ek->h, nn->svc_expkey_cache);

	if (FUNC1(exp))
		return FUNC0(exp);
	return exp;
}