
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ipt_TTL_info* targinfo; } ;
struct ipt_TTL_info {scalar_t__ mode; scalar_t__ ttl; } ;


 int EINVAL ;
 scalar_t__ IPT_TTL_MAXMODE ;
 scalar_t__ IPT_TTL_SET ;

__attribute__((used)) static int ttl_tg_check(const struct xt_tgchk_param *par)
{
 const struct ipt_TTL_info *info = par->targinfo;

 if (info->mode > IPT_TTL_MAXMODE)
  return -EINVAL;
 if (info->mode != IPT_TTL_SET && info->ttl == 0)
  return -EINVAL;
 return 0;
}
