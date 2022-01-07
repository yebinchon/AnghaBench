
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int end_name_hash (unsigned long) ;
 unsigned long init_name_hash (void const*) ;
 unsigned long partial_name_hash (unsigned char,unsigned long) ;

unsigned int full_name_hash(const void *salt, const char *name, unsigned int len)
{
 unsigned long hash = init_name_hash(salt);
 while (len--)
  hash = partial_name_hash((unsigned char)*name++, hash);
 return end_name_hash(hash);
}
