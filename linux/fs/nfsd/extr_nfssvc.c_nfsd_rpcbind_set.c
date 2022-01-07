
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_program {int dummy; } ;
struct net {int dummy; } ;


 int NFSD_TEST ;
 int net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int nfsd_vers (int ,int ,int ) ;
 int svc_generic_rpcbind_set (struct net*,struct svc_program const*,int ,int,unsigned short,unsigned short) ;

__attribute__((used)) static int
nfsd_rpcbind_set(struct net *net, const struct svc_program *progp,
   u32 version, int family, unsigned short proto,
   unsigned short port)
{
 if (!nfsd_vers(net_generic(net, nfsd_net_id), version, NFSD_TEST))
  return 0;
 return svc_generic_rpcbind_set(net, progp, version, family,
   proto, port);
}
