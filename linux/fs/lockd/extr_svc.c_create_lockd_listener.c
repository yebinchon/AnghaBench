
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int dummy; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 int SVC_SOCK_DEFAULTS ;
 int svc_create_xprt (struct svc_serv*,char const*,struct net*,int const,unsigned short const,int ,struct cred const*) ;
 struct svc_xprt* svc_find_xprt (struct svc_serv*,char const*,struct net*,int const,int ) ;
 int svc_xprt_put (struct svc_xprt*) ;

__attribute__((used)) static int create_lockd_listener(struct svc_serv *serv, const char *name,
     struct net *net, const int family,
     const unsigned short port,
     const struct cred *cred)
{
 struct svc_xprt *xprt;

 xprt = svc_find_xprt(serv, name, net, family, 0);
 if (xprt == ((void*)0))
  return svc_create_xprt(serv, name, net, family, port,
      SVC_SOCK_DEFAULTS, cred);
 svc_xprt_put(xprt);
 return 0;
}
