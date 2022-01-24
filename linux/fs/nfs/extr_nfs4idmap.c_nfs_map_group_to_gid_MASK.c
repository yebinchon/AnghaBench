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
struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int dummy; } ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,size_t,char*,int*,struct idmap*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t,int,int) ; 

int FUNC6(const struct nfs_server *server, const char *name, size_t namelen, kgid_t *gid)
{
	struct idmap *idmap = server->nfs_client->cl_idmap;
	__u32 id = -1;
	int ret = 0;

	if (!FUNC4(name, namelen, &id))
		ret = FUNC3(name, namelen, "gid", &id, idmap);
	if (ret == 0) {
		*gid = FUNC2(FUNC1(idmap), id);
		if (!FUNC0(*gid))
			ret = -ERANGE;
	}
	FUNC5(name, namelen, id, ret);
	return ret;
}