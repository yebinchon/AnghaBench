
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ XATTR_MAC_OSX_PREFIX_LEN ;
 int is_known_namespace (char const*) ;

__attribute__((used)) static int name_len(const char *xattr_name, int xattr_name_len)
{
 int len = xattr_name_len + 1;

 if (!is_known_namespace(xattr_name))
  len += XATTR_MAC_OSX_PREFIX_LEN;

 return len;
}
