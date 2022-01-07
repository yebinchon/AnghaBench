
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct posix_acl_xattr_header {scalar_t__ a_version; } ;
struct posix_acl_xattr_entry {int e_id; int e_perm; int e_tag; } ;
struct posix_acl_entry {int e_tag; int e_gid; int e_uid; void* e_perm; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int POSIX_ACL_XATTR_VERSION ;
 scalar_t__ cpu_to_le32 (int ) ;
 int gid_valid (int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int make_kgid (struct user_namespace*,int ) ;
 int make_kuid (struct user_namespace*,int ) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_xattr_count (size_t) ;
 int uid_valid (int ) ;

struct posix_acl *
posix_acl_from_xattr(struct user_namespace *user_ns,
       const void *value, size_t size)
{
 const struct posix_acl_xattr_header *header = value;
 const struct posix_acl_xattr_entry *entry = (const void *)(header + 1), *end;
 int count;
 struct posix_acl *acl;
 struct posix_acl_entry *acl_e;

 if (!value)
  return ((void*)0);
 if (size < sizeof(struct posix_acl_xattr_header))
   return ERR_PTR(-EINVAL);
 if (header->a_version != cpu_to_le32(POSIX_ACL_XATTR_VERSION))
  return ERR_PTR(-EOPNOTSUPP);

 count = posix_acl_xattr_count(size);
 if (count < 0)
  return ERR_PTR(-EINVAL);
 if (count == 0)
  return ((void*)0);

 acl = posix_acl_alloc(count, GFP_NOFS);
 if (!acl)
  return ERR_PTR(-ENOMEM);
 acl_e = acl->a_entries;

 for (end = entry + count; entry != end; acl_e++, entry++) {
  acl_e->e_tag = le16_to_cpu(entry->e_tag);
  acl_e->e_perm = le16_to_cpu(entry->e_perm);

  switch(acl_e->e_tag) {
   case 128:
   case 132:
   case 131:
   case 130:
    break;

   case 129:
    acl_e->e_uid =
     make_kuid(user_ns,
        le32_to_cpu(entry->e_id));
    if (!uid_valid(acl_e->e_uid))
     goto fail;
    break;
   case 133:
    acl_e->e_gid =
     make_kgid(user_ns,
        le32_to_cpu(entry->e_id));
    if (!gid_valid(acl_e->e_gid))
     goto fail;
    break;

   default:
    goto fail;
  }
 }
 return acl;

fail:
 posix_acl_release(acl);
 return ERR_PTR(-EINVAL);
}
