
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_cap_data {int magic_etc; } ;


 scalar_t__ VFS_CAP_REVISION_2 ;
 size_t XATTR_CAPS_SZ_2 ;
 int le32_to_cpu (int ) ;
 scalar_t__ sansflags (int ) ;

__attribute__((used)) static bool is_v2header(size_t size, const struct vfs_cap_data *cap)
{
 if (size != XATTR_CAPS_SZ_2)
  return 0;
 return sansflags(le32_to_cpu(cap->magic_etc)) == VFS_CAP_REVISION_2;
}
