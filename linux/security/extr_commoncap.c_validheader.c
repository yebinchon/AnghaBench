
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_cap_data {int dummy; } ;


 scalar_t__ is_v2header (size_t,struct vfs_cap_data const*) ;
 scalar_t__ is_v3header (size_t,struct vfs_cap_data const*) ;

__attribute__((used)) static bool validheader(size_t size, const struct vfs_cap_data *cap)
{
 return is_v2header(size, cap) || is_v3header(size, cap);
}
