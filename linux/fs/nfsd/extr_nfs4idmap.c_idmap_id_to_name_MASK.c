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
struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  idtoname_cache; } ;
struct ent {int type; int /*<<< orphan*/  h; int /*<<< orphan*/  name; int /*<<< orphan*/  authname; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int IDMAP_NAMESZ ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct svc_rqst*,int /*<<< orphan*/ ,struct ent*,int /*<<< orphan*/ ,struct ent**) ; 
 int /*<<< orphan*/  idtoname_lookup ; 
 struct nfsd_net* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC12(struct xdr_stream *xdr,
			       struct svc_rqst *rqstp, int type, u32 id)
{
	struct ent *item, key = {
		.id = id,
		.type = type,
	};
	__be32 *p;
	int ret;
	struct nfsd_net *nn = FUNC5(FUNC0(rqstp), nfsd_net_id);

	FUNC8(key.authname, FUNC7(rqstp), sizeof(key.authname));
	ret = FUNC4(rqstp, idtoname_lookup, &key, nn->idtoname_cache, &item);
	if (ret == -ENOENT)
		return FUNC3(xdr, id);
	if (ret)
		return FUNC6(ret);
	ret = FUNC9(item->name);
	FUNC1(ret > IDMAP_NAMESZ);
	p = FUNC11(xdr, ret + 4);
	if (!p)
		return nfserr_resource;
	p = FUNC10(p, item->name, ret);
	FUNC2(&item->h, nn->idtoname_cache);
	return 0;
}