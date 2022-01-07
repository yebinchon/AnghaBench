
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {unsigned int hash; void const* ns; int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int kernfs_name_compare(unsigned int hash, const char *name,
          const void *ns, const struct kernfs_node *kn)
{
 if (hash < kn->hash)
  return -1;
 if (hash > kn->hash)
  return 1;
 if (ns < kn->ns)
  return -1;
 if (ns > kn->ns)
  return 1;
 return strcmp(name, kn->name);
}
