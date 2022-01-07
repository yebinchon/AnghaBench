
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netns_ipvs {int dummy; } ;


 int EINVAL ;
 size_t IPVS_DAEMON_ATTR_STATE ;
 int nla_get_u32 (struct nlattr*) ;
 int stop_sync_thread (struct netns_ipvs*,int ) ;

__attribute__((used)) static int ip_vs_genl_del_daemon(struct netns_ipvs *ipvs, struct nlattr **attrs)
{
 int ret;

 if (!attrs[IPVS_DAEMON_ATTR_STATE])
  return -EINVAL;

 ret = stop_sync_thread(ipvs,
          nla_get_u32(attrs[IPVS_DAEMON_ATTR_STATE]));
 return ret;
}
