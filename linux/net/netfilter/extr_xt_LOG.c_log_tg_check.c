
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {scalar_t__ family; struct xt_log_info* targinfo; } ;
struct xt_log_info {int level; char* prefix; } ;


 int EINVAL ;
 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 int NF_LOG_TYPE_LOG ;
 int nf_logger_find_get (scalar_t__,int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int log_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_log_info *loginfo = par->targinfo;

 if (par->family != NFPROTO_IPV4 && par->family != NFPROTO_IPV6)
  return -EINVAL;

 if (loginfo->level >= 8) {
  pr_debug("level %u >= 8\n", loginfo->level);
  return -EINVAL;
 }

 if (loginfo->prefix[sizeof(loginfo->prefix)-1] != '\0') {
  pr_debug("prefix is not null-terminated\n");
  return -EINVAL;
 }

 return nf_logger_find_get(par->family, NF_LOG_TYPE_LOG);
}
