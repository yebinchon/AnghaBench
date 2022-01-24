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
typedef  int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  nametoid_cache; } ;
struct ent {int type; char* name; int id; int /*<<< orphan*/  h; int /*<<< orphan*/  authname; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ ,struct ent*,int /*<<< orphan*/ ,struct ent**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  nametoid_lookup ; 
 struct nfsd_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  nfserr_badowner ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC8(struct svc_rqst *rqstp, int type, const char *name, u32 namelen,
		u32 *id)
{
	struct ent *item, key = {
		.type = type,
	};
	int ret;
	struct nfsd_net *nn = FUNC4(FUNC0(rqstp), nfsd_net_id);

	if (namelen + 1 > sizeof(key.name))
		return nfserr_badowner;
	FUNC3(key.name, name, namelen);
	key.name[namelen] = '\0';
	FUNC7(key.authname, FUNC6(rqstp), sizeof(key.authname));
	ret = FUNC2(rqstp, nametoid_lookup, &key, nn->nametoid_cache, &item);
	if (ret == -ENOENT)
		return nfserr_badowner;
	if (ret)
		return FUNC5(ret);
	*id = item->id;
	FUNC1(&item->h, nn->nametoid_cache);
	return 0;
}