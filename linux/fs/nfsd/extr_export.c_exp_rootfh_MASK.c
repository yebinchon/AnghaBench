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
struct svc_fh {int /*<<< orphan*/  fh_handle; } ;
struct svc_export {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct nfsd_net {struct cache_detail* svc_export_cache; } ;
struct net {int dummy; } ;
struct knfsd_fh {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int FUNC1 (struct svc_export*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_export* FUNC4 (struct cache_detail*,struct auth_domain*,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_export*) ; 
 scalar_t__ FUNC6 (struct svc_fh*,struct svc_export*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_fh*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_fh*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC10 (struct knfsd_fh*,int /*<<< orphan*/ *,int) ; 
 struct nfsd_net* FUNC11 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC12 (struct path*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(struct net *net, struct auth_domain *clp, char *name,
	   struct knfsd_fh *f, int maxsize)
{
	struct svc_export	*exp;
	struct path		path;
	struct inode		*inode;
	struct svc_fh		fh;
	int			err;
	struct nfsd_net		*nn = FUNC11(net, nfsd_net_id);
	struct cache_detail	*cd = nn->svc_export_cache;

	err = -EPERM;
	/* NB: we probably ought to check that it's NUL-terminated */
	if (FUNC9(name, 0, &path)) {
		FUNC13("nfsd: exp_rootfh path not found %s", name);
		return err;
	}
	inode = FUNC2(path.dentry);

	FUNC3("nfsd: exp_rootfh(%s [%p] %s:%s/%ld)\n",
		 name, path.dentry, clp->name,
		 inode->i_sb->s_id, inode->i_ino);
	exp = FUNC4(cd, clp, &path);
	if (FUNC0(exp)) {
		err = FUNC1(exp);
		goto out;
	}

	/*
	 * fh must be initialized before calling fh_compose
	 */
	FUNC7(&fh, maxsize);
	if (FUNC6(&fh, exp, path.dentry, NULL))
		err = -EINVAL;
	else
		err = 0;
	FUNC10(f, &fh.fh_handle, sizeof(struct knfsd_fh));
	FUNC8(&fh);
	FUNC5(exp);
out:
	FUNC12(&path);
	return err;
}