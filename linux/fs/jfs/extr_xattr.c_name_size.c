
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_ea {int namelen; int name; } ;


 int XATTR_OS2_PREFIX_LEN ;
 scalar_t__ is_known_namespace (int ) ;

__attribute__((used)) static inline int name_size(struct jfs_ea *ea)
{
 if (is_known_namespace(ea->name))
  return ea->namelen;
 else
  return ea->namelen + XATTR_OS2_PREFIX_LEN;
}
