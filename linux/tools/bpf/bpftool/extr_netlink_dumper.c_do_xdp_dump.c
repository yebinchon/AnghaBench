
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ifinfomsg {int ifi_index; } ;


 size_t IFLA_IFNAME ;
 size_t IFLA_XDP ;
 int do_xdp_dump_one (struct nlattr*,int ,int ) ;
 int libbpf_nla_getattr_str (struct nlattr*) ;

int do_xdp_dump(struct ifinfomsg *ifinfo, struct nlattr **tb)
{
 if (!tb[IFLA_XDP])
  return 0;

 return do_xdp_dump_one(tb[IFLA_XDP], ifinfo->ifi_index,
          libbpf_nla_getattr_str(tb[IFLA_IFNAME]));
}
