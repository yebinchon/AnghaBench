
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XATTR_SELINUX_SUFFIX ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_ismaclabel(const char *name)
{
 return (strcmp(name, XATTR_SELINUX_SUFFIX) == 0);
}
