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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef  int /*<<< orphan*/  portbuf ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int RPCBIND_MAXUADDRLEN ; 
 int RPCBIND_MAXUADDRPLEN ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const*,char*,int) ; 
 int FUNC4 (char*,int,char*,unsigned short,unsigned short) ; 
 int FUNC5 (char*,char*,int) ; 

char *FUNC6(const struct sockaddr *sap, gfp_t gfp_flags)
{
	char portbuf[RPCBIND_MAXUADDRPLEN];
	char addrbuf[RPCBIND_MAXUADDRLEN];
	unsigned short port;

	switch (sap->sa_family) {
	case AF_INET:
		if (FUNC2(sap, addrbuf, sizeof(addrbuf)) == 0)
			return NULL;
		port = FUNC1(((struct sockaddr_in *)sap)->sin_port);
		break;
	case AF_INET6:
		if (FUNC3(sap, addrbuf, sizeof(addrbuf)) == 0)
			return NULL;
		port = FUNC1(((struct sockaddr_in6 *)sap)->sin6_port);
		break;
	default:
		return NULL;
	}

	if (FUNC4(portbuf, sizeof(portbuf),
		     ".%u.%u", port >> 8, port & 0xff) > (int)sizeof(portbuf))
		return NULL;

	if (FUNC5(addrbuf, portbuf, sizeof(addrbuf)) > sizeof(addrbuf))
		return NULL;

	return FUNC0(addrbuf, gfp_flags);
}