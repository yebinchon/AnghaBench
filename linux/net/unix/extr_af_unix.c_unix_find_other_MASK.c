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
struct sockaddr_un {scalar_t__* sun_path; } ;
struct sock {int sk_type; } ;
struct path {struct dentry* dentry; } ;
struct net {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct path path; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 struct sock* FUNC7 (struct inode*) ; 
 struct sock* FUNC8 (struct net*,struct sockaddr_un*,int,int,unsigned int) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC10(struct net *net,
				    struct sockaddr_un *sunname, int len,
				    int type, unsigned int hash, int *error)
{
	struct sock *u;
	struct path path;
	int err = 0;

	if (sunname->sun_path[0]) {
		struct inode *inode;
		err = FUNC3(sunname->sun_path, LOOKUP_FOLLOW, &path);
		if (err)
			goto fail;
		inode = FUNC1(path.dentry);
		err = FUNC2(inode, MAY_WRITE);
		if (err)
			goto put_fail;

		err = -ECONNREFUSED;
		if (!FUNC0(inode->i_mode))
			goto put_fail;
		u = FUNC7(inode);
		if (!u)
			goto put_fail;

		if (u->sk_type == type)
			FUNC6(&path);

		FUNC4(&path);

		err = -EPROTOTYPE;
		if (u->sk_type != type) {
			FUNC5(u);
			goto fail;
		}
	} else {
		err = -ECONNREFUSED;
		u = FUNC8(net, sunname, len, type, hash);
		if (u) {
			struct dentry *dentry;
			dentry = FUNC9(u)->path.dentry;
			if (dentry)
				FUNC6(&FUNC9(u)->path);
		} else
			goto fail;
	}
	return u;

put_fail:
	FUNC4(&path);
fail:
	*error = err;
	return NULL;
}