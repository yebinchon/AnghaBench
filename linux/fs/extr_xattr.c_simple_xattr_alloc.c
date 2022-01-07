
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_xattr {size_t size; int value; } ;


 int GFP_KERNEL ;
 struct simple_xattr* kmalloc (size_t,int ) ;
 int memcpy (int ,void const*,size_t) ;

struct simple_xattr *simple_xattr_alloc(const void *value, size_t size)
{
 struct simple_xattr *new_xattr;
 size_t len;


 len = sizeof(*new_xattr) + size;
 if (len < sizeof(*new_xattr))
  return ((void*)0);

 new_xattr = kmalloc(len, GFP_KERNEL);
 if (!new_xattr)
  return ((void*)0);

 new_xattr->size = size;
 memcpy(new_xattr->value, value, size);
 return new_xattr;
}
