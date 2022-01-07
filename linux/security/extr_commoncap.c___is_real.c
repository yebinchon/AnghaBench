
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int uid; } ;
typedef int kuid_t ;


 int uid_eq (int ,int ) ;

__attribute__((used)) static inline bool __is_real(kuid_t uid, struct cred *cred)
{ return uid_eq(cred->uid, uid); }
