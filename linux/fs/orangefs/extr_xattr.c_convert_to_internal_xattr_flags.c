
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ORANGEFS_XATTR_CREATE ;
 int ORANGEFS_XATTR_REPLACE ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;

__attribute__((used)) static inline int convert_to_internal_xattr_flags(int setxattr_flags)
{
 int internal_flag = 0;

 if (setxattr_flags & XATTR_REPLACE) {

  internal_flag = ORANGEFS_XATTR_REPLACE;
 } else if (setxattr_flags & XATTR_CREATE) {

  internal_flag = ORANGEFS_XATTR_CREATE;
 }
 return internal_flag;
}
