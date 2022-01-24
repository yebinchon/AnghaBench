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
typedef  char vfsmount ;
struct sockaddr_storage {int dummy; } ;
struct nfs_clone_mount {char* mnt_path; char* hostname; int /*<<< orphan*/ * addr; int /*<<< orphan*/  dentry; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  sb; } ;
struct nfs4_string {unsigned int len; int /*<<< orphan*/  data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; int /*<<< orphan*/  rootpath; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPV6_SCOPE_DELIMITER ; 
 scalar_t__ FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (size_t const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_referral_fs_type ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,size_t const,struct net*) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct nfs_clone_mount*) ; 

__attribute__((used)) static struct vfsmount *FUNC13(struct nfs_clone_mount *mountdata,
				     char *page, char *page2,
				     const struct nfs4_fs_location *location)
{
	const size_t addr_bufsize = sizeof(struct sockaddr_storage);
	struct net *net = FUNC10(FUNC3(mountdata->sb)->client);
	struct vfsmount *mnt = FUNC1(-ENOENT);
	char *mnt_path;
	unsigned int maxbuflen;
	unsigned int s;

	mnt_path = FUNC8(&location->rootpath, page2, PAGE_SIZE);
	if (FUNC2(mnt_path))
		return FUNC0(mnt_path);
	mountdata->mnt_path = mnt_path;
	maxbuflen = mnt_path - 1 - page2;

	mountdata->addr = FUNC5(addr_bufsize, GFP_KERNEL);
	if (mountdata->addr == NULL)
		return FUNC1(-ENOMEM);

	for (s = 0; s < location->nservers; s++) {
		const struct nfs4_string *buf = &location->servers[s];

		if (buf->len <= 0 || buf->len >= maxbuflen)
			continue;

		if (FUNC6(buf->data, IPV6_SCOPE_DELIMITER, buf->len))
			continue;

		mountdata->addrlen = FUNC9(buf->data, buf->len,
				mountdata->addr, addr_bufsize, net);
		if (mountdata->addrlen == 0)
			continue;

		FUNC7(page2, buf->data, buf->len);
		page2[buf->len] = '\0';
		mountdata->hostname = page2;

		FUNC11(page, PAGE_SIZE, "%s:%s",
				mountdata->hostname,
				mountdata->mnt_path);

		mnt = FUNC12(mountdata->dentry, &nfs4_referral_fs_type, page, mountdata);
		if (!FUNC2(mnt))
			break;
	}
	FUNC4(mountdata->addr);
	return mnt;
}