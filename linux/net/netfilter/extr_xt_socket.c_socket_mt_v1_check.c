
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_socket_mtinfo1 {int flags; } ;
struct xt_mtchk_param {int family; int net; scalar_t__ matchinfo; } ;


 int EINVAL ;
 int XT_SOCKET_FLAGS_V1 ;
 int pr_info_ratelimited (char*,int) ;
 int socket_mt_enable_defrag (int ,int ) ;

__attribute__((used)) static int socket_mt_v1_check(const struct xt_mtchk_param *par)
{
 const struct xt_socket_mtinfo1 *info = (struct xt_socket_mtinfo1 *) par->matchinfo;
 int err;

 err = socket_mt_enable_defrag(par->net, par->family);
 if (err)
  return err;

 if (info->flags & ~XT_SOCKET_FLAGS_V1) {
  pr_info_ratelimited("unknown flags 0x%x\n",
        info->flags & ~XT_SOCKET_FLAGS_V1);
  return -EINVAL;
 }
 return 0;
}
