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
struct nfs_server {int caps; TYPE_1__* nfs_client; } ;
struct idmap {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int NFS_CAP_UIDGID_NOMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idmap*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,size_t,struct idmap*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 

int FUNC5(const struct nfs_server *server, kuid_t uid, char *buf, size_t buflen)
{
	struct idmap *idmap = server->nfs_client->cl_idmap;
	int ret = -EINVAL;
	__u32 id;

	id = FUNC0(FUNC1(idmap), uid);
	if (!(server->caps & NFS_CAP_UIDGID_NOMAP))
		ret = FUNC2(id, "user", buf, buflen, idmap);
	if (ret < 0)
		ret = FUNC3(id, buf, buflen);
	FUNC4(buf, ret, id, ret);
	return ret;
}