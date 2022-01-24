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
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct idmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,size_t,char*,int*,struct idmap*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(const struct nfs_server *server, const char *name, size_t namelen, kuid_t *uid)
{
	struct idmap *idmap = server->nfs_client->cl_idmap;
	__u32 id = -1;
	int ret = 0;

	if (!FUNC3(name, namelen, &id))
		ret = FUNC2(name, namelen, "uid", &id, idmap);
	if (ret == 0) {
		*uid = FUNC1(FUNC0(idmap), id);
		if (!FUNC5(*uid))
			ret = -ERANGE;
	}
	FUNC4(name, namelen, id, ret);
	return ret;
}