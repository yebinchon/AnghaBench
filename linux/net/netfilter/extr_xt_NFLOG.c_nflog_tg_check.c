
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; struct xt_nflog_info* targinfo; } ;
struct xt_nflog_info {int flags; char* prefix; } ;


 int EINVAL ;
 int NF_LOG_TYPE_ULOG ;
 int XT_NFLOG_MASK ;
 int nf_logger_find_get (int ,int ) ;

__attribute__((used)) static int nflog_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_nflog_info *info = par->targinfo;

 if (info->flags & ~XT_NFLOG_MASK)
  return -EINVAL;
 if (info->prefix[sizeof(info->prefix) - 1] != '\0')
  return -EINVAL;

 return nf_logger_find_get(par->family, NF_LOG_TYPE_ULOG);
}
