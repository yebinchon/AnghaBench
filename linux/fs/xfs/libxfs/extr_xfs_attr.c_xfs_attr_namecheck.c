
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXNAMELEN ;
 int memchr (void const*,int ,size_t) ;

bool
xfs_attr_namecheck(
 const void *name,
 size_t length)
{




 if (length >= MAXNAMELEN)
  return 0;


 return !memchr(name, 0, length);
}
