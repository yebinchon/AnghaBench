
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int uid; int euid; } ;


 int uid_eq (int ,int ) ;

__attribute__((used)) static inline bool __is_setuid(struct cred *new, const struct cred *old)
{ return !uid_eq(new->euid, old->uid); }
