
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cap_permitted; int cap_effective; int euid; int cap_ambient; int suid; int uid; int user_ns; } ;
typedef int kuid_t ;


 int SECURE_KEEP_CAPS ;
 int cap_clear (int ) ;
 int issecure (int ) ;
 int make_kuid (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static inline void cap_emulate_setxuid(struct cred *new, const struct cred *old)
{
 kuid_t root_uid = make_kuid(old->user_ns, 0);

 if ((uid_eq(old->uid, root_uid) ||
      uid_eq(old->euid, root_uid) ||
      uid_eq(old->suid, root_uid)) &&
     (!uid_eq(new->uid, root_uid) &&
      !uid_eq(new->euid, root_uid) &&
      !uid_eq(new->suid, root_uid))) {
  if (!issecure(SECURE_KEEP_CAPS)) {
   cap_clear(new->cap_permitted);
   cap_clear(new->cap_effective);
  }






  cap_clear(new->cap_ambient);
 }
 if (uid_eq(old->euid, root_uid) && !uid_eq(new->euid, root_uid))
  cap_clear(new->cap_effective);
 if (!uid_eq(old->euid, root_uid) && uid_eq(new->euid, root_uid))
  new->cap_effective = new->cap_permitted;
}
