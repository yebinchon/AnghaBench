
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 int EPROTONOSUPPORT ;
 int _svc_create_xprt (struct svc_serv*,char const*,struct net*,int const,unsigned short const,int,struct cred const*) ;
 int dprintk (char*,char const*,unsigned short const) ;
 int request_module (char*,char const*) ;

int svc_create_xprt(struct svc_serv *serv, const char *xprt_name,
      struct net *net, const int family,
      const unsigned short port, int flags,
      const struct cred *cred)
{
 int err;

 dprintk("svc: creating transport %s[%d]\n", xprt_name, port);
 err = _svc_create_xprt(serv, xprt_name, net, family, port, flags, cred);
 if (err == -EPROTONOSUPPORT) {
  request_module("svc%s", xprt_name);
  err = _svc_create_xprt(serv, xprt_name, net, family, port, flags, cred);
 }
 if (err < 0)
  dprintk("svc: transport %s not found, err %d\n",
   xprt_name, -err);
 return err;
}
