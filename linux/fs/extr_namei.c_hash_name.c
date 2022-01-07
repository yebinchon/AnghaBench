
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int end_name_hash (unsigned long) ;
 int hashlen_create (int ,unsigned long) ;
 unsigned long init_name_hash (void const*) ;
 unsigned long partial_name_hash (unsigned long,unsigned long) ;

__attribute__((used)) static inline u64 hash_name(const void *salt, const char *name)
{
 unsigned long hash = init_name_hash(salt);
 unsigned long len = 0, c;

 c = (unsigned char)*name;
 do {
  len++;
  hash = partial_name_hash(c, hash);
  c = (unsigned char)name[len];
 } while (c && c != '/');
 return hashlen_create(end_name_hash(hash), len);
}
