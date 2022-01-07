
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct user_namespace {int flags; int parent; int owner; } ;
struct uid_gid_map {int nr_extents; TYPE_1__* extent; } ;
struct file {struct cred* f_cred; } ;
struct cred {int egid; int euid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_2__ {int count; int lower_first; } ;


 int CAP_SETGID ;
 int CAP_SETUID ;
 int USERNS_SETGROUPS_ALLOWED ;
 int cap_valid (int) ;
 scalar_t__ file_ns_capable (struct file const*,int ,int) ;
 scalar_t__ gid_eq (int ,int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 scalar_t__ ns_capable (int ,int) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool new_idmap_permitted(const struct file *file,
    struct user_namespace *ns, int cap_setid,
    struct uid_gid_map *new_map)
{
 const struct cred *cred = file->f_cred;



 if ((new_map->nr_extents == 1) && (new_map->extent[0].count == 1) &&
     uid_eq(ns->owner, cred->euid)) {
  u32 id = new_map->extent[0].lower_first;
  if (cap_setid == CAP_SETUID) {
   kuid_t uid = make_kuid(ns->parent, id);
   if (uid_eq(uid, cred->euid))
    return 1;
  } else if (cap_setid == CAP_SETGID) {
   kgid_t gid = make_kgid(ns->parent, id);
   if (!(ns->flags & USERNS_SETGROUPS_ALLOWED) &&
       gid_eq(gid, cred->egid))
    return 1;
  }
 }


 if (!cap_valid(cap_setid))
  return 1;





 if (ns_capable(ns->parent, cap_setid) &&
     file_ns_capable(file, ns->parent, cap_setid))
  return 1;

 return 0;
}
