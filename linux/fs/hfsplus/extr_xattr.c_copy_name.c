
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XATTR_MAC_OSX_PREFIX ;
 scalar_t__ XATTR_MAC_OSX_PREFIX_LEN ;
 int is_known_namespace (char const*) ;
 int memcpy (char*,int ,scalar_t__) ;
 int memset (char*,int ,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int copy_name(char *buffer, const char *xattr_name, int name_len)
{
 int len = name_len;
 int offset = 0;

 if (!is_known_namespace(xattr_name)) {
  memcpy(buffer, XATTR_MAC_OSX_PREFIX, XATTR_MAC_OSX_PREFIX_LEN);
  offset += XATTR_MAC_OSX_PREFIX_LEN;
  len += XATTR_MAC_OSX_PREFIX_LEN;
 }

 strncpy(buffer + offset, xattr_name, name_len);
 memset(buffer + offset + name_len, 0, 1);
 len += 1;

 return len;
}
