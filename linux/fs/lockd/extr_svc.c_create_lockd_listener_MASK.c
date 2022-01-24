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
struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVC_SOCK_DEFAULTS ; 
 int FUNC0 (struct svc_serv*,char const*,struct net*,int const,unsigned short const,int /*<<< orphan*/ ,struct cred const*) ; 
 struct svc_xprt* FUNC1 (struct svc_serv*,char const*,struct net*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 

__attribute__((used)) static int FUNC3(struct svc_serv *serv, const char *name,
				 struct net *net, const int family,
				 const unsigned short port,
				 const struct cred *cred)
{
	struct svc_xprt *xprt;

	xprt = FUNC1(serv, name, net, family, 0);
	if (xprt == NULL)
		return FUNC0(serv, name, net, family, port,
						SVC_SOCK_DEFAULTS, cred);
	FUNC2(xprt);
	return 0;
}