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
struct sockaddr_storage {int dummy; } ;
typedef  char sockaddr ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs4_string {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPV6_SCOPE_DELIMITER ; 
 int /*<<< orphan*/  NFS_PORT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t const,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct nfs_server*,char*,char*,size_t,struct net*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,size_t const,struct net*) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nfs_server *server,
		char *page, char *page2,
		const struct nfs4_fs_location *location)
{
	const size_t addr_bufsize = sizeof(struct sockaddr_storage);
	struct net *net = FUNC6(server->client);
	struct sockaddr *sap;
	unsigned int s;
	size_t salen;
	int error;

	sap = FUNC1(addr_bufsize, GFP_KERNEL);
	if (sap == NULL)
		return -ENOMEM;

	error = -ENOENT;
	for (s = 0; s < location->nservers; s++) {
		const struct nfs4_string *buf = &location->servers[s];
		char *hostname;

		if (buf->len <= 0 || buf->len > PAGE_SIZE)
			continue;

		if (FUNC3(buf->data, IPV6_SCOPE_DELIMITER, buf->len) != NULL)
			continue;

		salen = FUNC5(buf->data, buf->len,
						sap, addr_bufsize, net);
		if (salen == 0)
			continue;
		FUNC7(sap, NFS_PORT);

		error = -ENOMEM;
		hostname = FUNC2(buf->data, buf->len, GFP_KERNEL);
		if (hostname == NULL)
			break;

		error = FUNC4(server, hostname, sap, salen, net);
		FUNC0(hostname);
		if (error == 0)
			break;
	}

	FUNC0(sap);
	return error;
}