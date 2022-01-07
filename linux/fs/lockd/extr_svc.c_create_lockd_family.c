
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;


 int create_lockd_listener (struct svc_serv*,char*,struct net*,int const,int ,struct cred const*) ;
 int nlm_tcpport ;
 int nlm_udpport ;

__attribute__((used)) static int create_lockd_family(struct svc_serv *serv, struct net *net,
          const int family, const struct cred *cred)
{
 int err;

 err = create_lockd_listener(serv, "udp", net, family, nlm_udpport,
   cred);
 if (err < 0)
  return err;

 return create_lockd_listener(serv, "tcp", net, family, nlm_tcpport,
   cred);
}
