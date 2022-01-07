
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct posix_acl_xattr_header {scalar_t__ a_version; } ;
struct posix_acl_xattr_entry {scalar_t__ e_id; int e_tag; } ;
typedef int kuid_t ;
typedef int kgid_t ;




 int POSIX_ACL_XATTR_VERSION ;
 scalar_t__ cpu_to_le32 (int ) ;
 int from_kgid (struct user_namespace*,int ) ;
 int from_kuid (struct user_namespace*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int make_kgid (struct user_namespace*,int ) ;
 int make_kuid (struct user_namespace*,int ) ;
 int posix_acl_xattr_count (size_t) ;

__attribute__((used)) static void posix_acl_fix_xattr_userns(
 struct user_namespace *to, struct user_namespace *from,
 void *value, size_t size)
{
 struct posix_acl_xattr_header *header = value;
 struct posix_acl_xattr_entry *entry = (void *)(header + 1), *end;
 int count;
 kuid_t uid;
 kgid_t gid;

 if (!value)
  return;
 if (size < sizeof(struct posix_acl_xattr_header))
  return;
 if (header->a_version != cpu_to_le32(POSIX_ACL_XATTR_VERSION))
  return;

 count = posix_acl_xattr_count(size);
 if (count < 0)
  return;
 if (count == 0)
  return;

 for (end = entry + count; entry != end; entry++) {
  switch(le16_to_cpu(entry->e_tag)) {
  case 128:
   uid = make_kuid(from, le32_to_cpu(entry->e_id));
   entry->e_id = cpu_to_le32(from_kuid(to, uid));
   break;
  case 129:
   gid = make_kgid(from, le32_to_cpu(entry->e_id));
   entry->e_id = cpu_to_le32(from_kgid(to, gid));
   break;
  default:
   break;
  }
 }
}
