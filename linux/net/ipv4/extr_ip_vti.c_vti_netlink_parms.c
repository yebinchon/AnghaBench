
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {void* daddr; void* saddr; int protocol; } ;
struct ip_tunnel_parm {TYPE_1__ iph; void* o_key; void* i_key; void* link; int i_flags; } ;
typedef void* __u32 ;


 size_t IFLA_VTI_FWMARK ;
 size_t IFLA_VTI_IKEY ;
 size_t IFLA_VTI_LINK ;
 size_t IFLA_VTI_LOCAL ;
 size_t IFLA_VTI_OKEY ;
 size_t IFLA_VTI_REMOTE ;
 int IPPROTO_IPIP ;
 int VTI_ISVTI ;
 int memset (struct ip_tunnel_parm*,int ,int) ;
 void* nla_get_be32 (struct nlattr*) ;
 void* nla_get_in_addr (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static void vti_netlink_parms(struct nlattr *data[],
         struct ip_tunnel_parm *parms,
         __u32 *fwmark)
{
 memset(parms, 0, sizeof(*parms));

 parms->iph.protocol = IPPROTO_IPIP;

 if (!data)
  return;

 parms->i_flags = VTI_ISVTI;

 if (data[IFLA_VTI_LINK])
  parms->link = nla_get_u32(data[IFLA_VTI_LINK]);

 if (data[IFLA_VTI_IKEY])
  parms->i_key = nla_get_be32(data[IFLA_VTI_IKEY]);

 if (data[IFLA_VTI_OKEY])
  parms->o_key = nla_get_be32(data[IFLA_VTI_OKEY]);

 if (data[IFLA_VTI_LOCAL])
  parms->iph.saddr = nla_get_in_addr(data[IFLA_VTI_LOCAL]);

 if (data[IFLA_VTI_REMOTE])
  parms->iph.daddr = nla_get_in_addr(data[IFLA_VTI_REMOTE]);

 if (data[IFLA_VTI_FWMARK])
  *fwmark = nla_get_u32(data[IFLA_VTI_FWMARK]);
}
