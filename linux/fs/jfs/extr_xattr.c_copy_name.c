
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_ea {int namelen; int name; } ;


 int XATTR_OS2_PREFIX ;
 int XATTR_OS2_PREFIX_LEN ;
 int is_known_namespace (int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static inline int copy_name(char *buffer, struct jfs_ea *ea)
{
 int len = ea->namelen;

 if (!is_known_namespace(ea->name)) {
  memcpy(buffer, XATTR_OS2_PREFIX, XATTR_OS2_PREFIX_LEN);
  buffer += XATTR_OS2_PREFIX_LEN;
  len += XATTR_OS2_PREFIX_LEN;
 }
 memcpy(buffer, ea->name, ea->namelen);
 buffer[ea->namelen] = 0;

 return len;
}
