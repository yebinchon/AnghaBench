
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct svc_version {scalar_t__ vs_rpcb_optnl; scalar_t__ vs_need_cong_ctrl; scalar_t__ vs_hidden; } ;
struct svc_program {int pg_name; struct svc_version** pg_vers; } ;
struct net {int dummy; } ;


 unsigned short IPPROTO_UDP ;
 int dprintk (char*,int ,size_t,char*,unsigned short,int) ;
 int svc_rpcbind_set_version (struct net*,struct svc_program const*,size_t,int,unsigned short,unsigned short) ;

int svc_generic_rpcbind_set(struct net *net,
       const struct svc_program *progp,
       u32 version, int family,
       unsigned short proto,
       unsigned short port)
{
 const struct svc_version *vers = progp->pg_vers[version];
 int error;

 if (vers == ((void*)0))
  return 0;

 if (vers->vs_hidden) {
  dprintk("svc: svc_register(%sv%d, %s, %u, %u)"
   " (but not telling portmap)\n",
   progp->pg_name, version,
   proto == IPPROTO_UDP? "udp" : "tcp",
   port, family);
  return 0;
 }





 if (vers->vs_need_cong_ctrl && proto == IPPROTO_UDP)
  return 0;

 error = svc_rpcbind_set_version(net, progp, version,
     family, proto, port);

 return (vers->vs_rpcb_optnl) ? 0 : error;
}
