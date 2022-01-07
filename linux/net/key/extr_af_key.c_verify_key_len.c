
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_key {scalar_t__ sadb_key_len; } ;


 int EINVAL ;
 scalar_t__ sadb_key_len (struct sadb_key const*) ;

__attribute__((used)) static int verify_key_len(const void *p)
{
 const struct sadb_key *key = p;

 if (sadb_key_len(key) > key->sadb_key_len)
  return -EINVAL;

 return 0;
}
