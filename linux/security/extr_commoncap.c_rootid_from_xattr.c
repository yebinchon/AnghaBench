
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vfs_ns_cap_data {int rootid; } ;
struct user_namespace {int dummy; } ;
typedef int kuid_t ;


 size_t XATTR_CAPS_SZ_3 ;
 int le32_to_cpu (int ) ;
 int make_kuid (struct user_namespace*,int ) ;

__attribute__((used)) static kuid_t rootid_from_xattr(const void *value, size_t size,
    struct user_namespace *task_ns)
{
 const struct vfs_ns_cap_data *nscap = value;
 uid_t rootid = 0;

 if (size == XATTR_CAPS_SZ_3)
  rootid = le32_to_cpu(nscap->rootid);

 return make_kuid(task_ns, rootid);
}
