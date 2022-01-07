
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int compat; int name; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int xfrm_alg_name_match(const struct xfrm_algo_desc *entry,
          const void *data)
{
 const char *name = data;

 return name && (!strcmp(name, entry->name) ||
   (entry->compat && !strcmp(name, entry->compat)));
}
