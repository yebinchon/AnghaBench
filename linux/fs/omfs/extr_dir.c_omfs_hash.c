
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (char const) ;

__attribute__((used)) static int omfs_hash(const char *name, int namelen, int mod)
{
 int i, hash = 0;
 for (i = 0; i < namelen; i++)
  hash ^= tolower(name[i]) << (i % 24);
 return hash % mod;
}
