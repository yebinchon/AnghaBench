
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t PATH_MAX ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void*,size_t) ;
 scalar_t__ unlikely (int) ;

char *audit_unpack_string(void **bufp, size_t *remain, size_t len)
{
 char *str;

 if (!*bufp || (len == 0) || (len > *remain))
  return ERR_PTR(-EINVAL);




 if (len > PATH_MAX)
  return ERR_PTR(-ENAMETOOLONG);

 str = kmalloc(len + 1, GFP_KERNEL);
 if (unlikely(!str))
  return ERR_PTR(-ENOMEM);

 memcpy(str, *bufp, len);
 str[len] = 0;
 *bufp += len;
 *remain -= len;

 return str;
}
