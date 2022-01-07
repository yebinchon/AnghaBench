
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int kuid_t ;


 scalar_t__ __is_eff (int ,struct cred*) ;
 int __is_real (int ,struct cred*) ;

__attribute__((used)) static inline bool __is_suid(kuid_t uid, struct cred *cred)
{ return !__is_real(uid, cred) && __is_eff(uid, cred); }
