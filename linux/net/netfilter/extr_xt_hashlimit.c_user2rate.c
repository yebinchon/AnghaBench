
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int XT_HASHLIMIT_SCALE_v2 ;
 scalar_t__ div64_u64 (int ,scalar_t__) ;
 int pr_info_ratelimited (char*,scalar_t__) ;

__attribute__((used)) static u64 user2rate(u64 user)
{
 if (user != 0) {
  return div64_u64(XT_HASHLIMIT_SCALE_v2, user);
 } else {
  pr_info_ratelimited("invalid rate from userspace: %llu\n",
        user);
  return 0;
 }
}
