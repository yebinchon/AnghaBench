
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;


 int OCFS2_XATTR_MAX ;
 struct xattr_handler** ocfs2_xattr_handler_map ;
 char const* xattr_prefix (struct xattr_handler const*) ;

__attribute__((used)) static inline const char *ocfs2_xattr_prefix(int name_index)
{
 const struct xattr_handler *handler = ((void*)0);

 if (name_index > 0 && name_index < OCFS2_XATTR_MAX)
  handler = ocfs2_xattr_handler_map[name_index];
 return handler ? xattr_prefix(handler) : ((void*)0);
}
