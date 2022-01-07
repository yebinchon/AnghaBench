
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;


 int ARRAY_SIZE (struct xattr_handler**) ;
 struct xattr_handler** f2fs_xattr_handler_map ;

__attribute__((used)) static inline const struct xattr_handler *f2fs_xattr_handler(int index)
{
 const struct xattr_handler *handler = ((void*)0);

 if (index > 0 && index < ARRAY_SIZE(f2fs_xattr_handler_map))
  handler = f2fs_xattr_handler_map[index];
 return handler;
}
