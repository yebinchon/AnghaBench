
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long partial_name_hash (int ,unsigned long) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static inline unsigned int
name_hash(const unsigned char *name)
{
 unsigned long hash = 0;
 unsigned int len = strlen((const char *)name);
 while (len--)
  hash = partial_name_hash(*name++, hash);
 return (unsigned int)hash;
}
