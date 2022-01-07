
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {TYPE_1__* a_entries; } ;
struct f2fs_acl_header {scalar_t__ a_version; } ;
struct f2fs_acl_entry_short {int dummy; } ;
struct f2fs_acl_entry {int e_id; int e_perm; int e_tag; } ;
struct TYPE_2__ {int e_tag; int e_gid; int e_uid; void* e_perm; } ;
 int EINVAL ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int F2FS_ACL_VERSION ;
 int GFP_NOFS ;
 scalar_t__ cpu_to_le32 (int ) ;
 int f2fs_acl_count (size_t) ;
 int init_user_ns ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int make_kgid (int *,int ) ;
 int make_kuid (int *,int ) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static struct posix_acl *f2fs_acl_from_disk(const char *value, size_t size)
{
 int i, count;
 struct posix_acl *acl;
 struct f2fs_acl_header *hdr = (struct f2fs_acl_header *)value;
 struct f2fs_acl_entry *entry = (struct f2fs_acl_entry *)(hdr + 1);
 const char *end = value + size;

 if (size < sizeof(struct f2fs_acl_header))
  return ERR_PTR(-EINVAL);

 if (hdr->a_version != cpu_to_le32(F2FS_ACL_VERSION))
  return ERR_PTR(-EINVAL);

 count = f2fs_acl_count(size);
 if (count < 0)
  return ERR_PTR(-EINVAL);
 if (count == 0)
  return ((void*)0);

 acl = posix_acl_alloc(count, GFP_NOFS);
 if (!acl)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < count; i++) {

  if ((char *)entry > end)
   goto fail;

  acl->a_entries[i].e_tag = le16_to_cpu(entry->e_tag);
  acl->a_entries[i].e_perm = le16_to_cpu(entry->e_perm);

  switch (acl->a_entries[i].e_tag) {
  case 128:
  case 132:
  case 131:
  case 130:
   entry = (struct f2fs_acl_entry *)((char *)entry +
     sizeof(struct f2fs_acl_entry_short));
   break;

  case 129:
   acl->a_entries[i].e_uid =
    make_kuid(&init_user_ns,
      le32_to_cpu(entry->e_id));
   entry = (struct f2fs_acl_entry *)((char *)entry +
     sizeof(struct f2fs_acl_entry));
   break;
  case 133:
   acl->a_entries[i].e_gid =
    make_kgid(&init_user_ns,
      le32_to_cpu(entry->e_id));
   entry = (struct f2fs_acl_entry *)((char *)entry +
     sizeof(struct f2fs_acl_entry));
   break;
  default:
   goto fail;
  }
 }
 if ((char *)entry != end)
  goto fail;
 return acl;
fail:
 posix_acl_release(acl);
 return ERR_PTR(-EINVAL);
}
