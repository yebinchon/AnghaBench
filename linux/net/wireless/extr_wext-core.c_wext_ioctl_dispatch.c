
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wext_ioctl_func ;
struct net {int dummy; } ;
struct iwreq {int ifr_name; } ;
struct iw_request_info {int dummy; } ;


 int dev_load (struct net*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int wext_permission_check (unsigned int) ;
 int wireless_process_ioctl (struct net*,struct iwreq*,unsigned int,struct iw_request_info*,int ,int ) ;

__attribute__((used)) static int wext_ioctl_dispatch(struct net *net, struct iwreq *iwr,
          unsigned int cmd, struct iw_request_info *info,
          wext_ioctl_func standard,
          wext_ioctl_func private)
{
 int ret = wext_permission_check(cmd);

 if (ret)
  return ret;

 dev_load(net, iwr->ifr_name);
 rtnl_lock();
 ret = wireless_process_ioctl(net, iwr, cmd, info, standard, private);
 rtnl_unlock();

 return ret;
}
