
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;


 size_t strlen (int ) ;
 int xattr_prefix (struct xattr_handler const*) ;

const char *xattr_full_name(const struct xattr_handler *handler,
       const char *name)
{
 size_t prefix_len = strlen(xattr_prefix(handler));

 return name - prefix_len;
}
