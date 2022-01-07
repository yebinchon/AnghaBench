
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_program {int pg_prog; int pg_name; } ;
struct net {int dummy; } ;


 unsigned short IPPROTO_UDP ;
 int __svc_register (struct net*,int ,int ,int ,int,unsigned short,unsigned short) ;
 int dprintk (char*,int ,int ,char*,unsigned short,int) ;

int svc_rpcbind_set_version(struct net *net,
       const struct svc_program *progp,
       u32 version, int family,
       unsigned short proto,
       unsigned short port)
{
 dprintk("svc: svc_register(%sv%d, %s, %u, %u)\n",
  progp->pg_name, version,
  proto == IPPROTO_UDP? "udp" : "tcp",
  port, family);

 return __svc_register(net, progp->pg_name, progp->pg_prog,
    version, family, proto, port);

}
