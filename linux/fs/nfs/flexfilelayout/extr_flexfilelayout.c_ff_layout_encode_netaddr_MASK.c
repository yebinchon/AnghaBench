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
struct xdr_stream {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; } ;
struct nfs4_pnfs_ds_addr {int /*<<< orphan*/  da_addr; } ;
typedef  int /*<<< orphan*/  portbuf ;
typedef  int /*<<< orphan*/  addrbuf ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int RPCBIND_MAXUADDRLEN ; 
 int RPCBIND_MAXUADDRPLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,char*,int) ; 
 unsigned short FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned short,unsigned short) ; 
 int FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct xdr_stream*,int) ; 

__attribute__((used)) static void
FUNC8(struct xdr_stream *xdr, struct nfs4_pnfs_ds_addr *da)
{
	struct sockaddr *sap = (struct sockaddr *)&da->da_addr;
	char portbuf[RPCBIND_MAXUADDRPLEN];
	char addrbuf[RPCBIND_MAXUADDRLEN];
	char *netid;
	unsigned short port;
	int len, netid_len;
	__be32 *p;

	switch (sap->sa_family) {
	case AF_INET:
		if (FUNC1(sap, addrbuf, sizeof(addrbuf)) == 0)
			return;
		port = FUNC3(((struct sockaddr_in *)sap)->sin_port);
		netid = "tcp";
		netid_len = 3;
		break;
	case AF_INET6:
		if (FUNC2(sap, addrbuf, sizeof(addrbuf)) == 0)
			return;
		port = FUNC3(((struct sockaddr_in6 *)sap)->sin6_port);
		netid = "tcp6";
		netid_len = 4;
		break;
	default:
		/* we only support tcp and tcp6 */
		FUNC0(1);
		return;
	}

	FUNC4(portbuf, sizeof(portbuf), ".%u.%u", port >> 8, port & 0xff);
	len = FUNC5(addrbuf, portbuf, sizeof(addrbuf));

	p = FUNC7(xdr, 4 + netid_len);
	FUNC6(p, netid, netid_len);

	p = FUNC7(xdr, 4 + len);
	FUNC6(p, addrbuf, len);
}