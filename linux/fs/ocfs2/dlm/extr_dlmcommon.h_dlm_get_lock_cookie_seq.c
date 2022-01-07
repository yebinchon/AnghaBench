
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline unsigned long long dlm_get_lock_cookie_seq(u64 cookie)
{
 unsigned long long ret;
 ret = ((unsigned long long)cookie) & 0x00ffffffffffffffULL;
 return ret;
}
