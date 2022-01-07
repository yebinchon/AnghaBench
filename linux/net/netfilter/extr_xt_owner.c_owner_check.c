
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_owner_match_info {int match; scalar_t__ uid_min; scalar_t__ uid_max; scalar_t__ gid_min; scalar_t__ gid_max; } ;
struct xt_mtchk_param {struct net* net; struct xt_owner_match_info* matchinfo; } ;
struct net {scalar_t__ user_ns; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EINVAL ;
 int XT_OWNER_GID ;
 int XT_OWNER_MASK ;
 int XT_OWNER_UID ;
 scalar_t__ current_user_ns () ;
 scalar_t__ gid_lt (int ,int ) ;
 int gid_valid (int ) ;
 int make_kgid (scalar_t__,scalar_t__) ;
 int make_kuid (scalar_t__,scalar_t__) ;
 scalar_t__ uid_lt (int ,int ) ;
 int uid_valid (int ) ;

__attribute__((used)) static int owner_check(const struct xt_mtchk_param *par)
{
 struct xt_owner_match_info *info = par->matchinfo;
 struct net *net = par->net;

 if (info->match & ~XT_OWNER_MASK)
  return -EINVAL;




 if ((info->match & (XT_OWNER_UID|XT_OWNER_GID)) &&
     (current_user_ns() != net->user_ns))
  return -EINVAL;


 if (info->match & XT_OWNER_UID) {
  kuid_t uid_min = make_kuid(net->user_ns, info->uid_min);
  kuid_t uid_max = make_kuid(net->user_ns, info->uid_max);

  if (!uid_valid(uid_min) || !uid_valid(uid_max) ||
      (info->uid_max < info->uid_min) ||
      uid_lt(uid_max, uid_min)) {
   return -EINVAL;
  }
 }


 if (info->match & XT_OWNER_GID) {
  kgid_t gid_min = make_kgid(net->user_ns, info->gid_min);
  kgid_t gid_max = make_kgid(net->user_ns, info->gid_max);

  if (!gid_valid(gid_min) || !gid_valid(gid_max) ||
      (info->gid_max < info->gid_min) ||
      gid_lt(gid_max, gid_min)) {
   return -EINVAL;
  }
 }

 return 0;
}
