
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rds_zcopy_cookies {int num; int * cookies; } ;
struct rds_msg_zcopy_info {struct rds_zcopy_cookies zcookies; } ;


 int RDS_MAX_ZCOOKIES ;

__attribute__((used)) static inline bool rds_zcookie_add(struct rds_msg_zcopy_info *info, u32 cookie)
{
 struct rds_zcopy_cookies *ck = &info->zcookies;
 int ncookies = ck->num;

 if (ncookies == RDS_MAX_ZCOOKIES)
  return 0;
 ck->cookies[ncookies] = cookie;
 ck->num = ++ncookies;
 return 1;
}
