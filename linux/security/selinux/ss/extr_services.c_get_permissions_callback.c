
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perm_datum {int value; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 char* kstrdup (char*,int ) ;

__attribute__((used)) static int get_permissions_callback(void *k, void *d, void *args)
{
 struct perm_datum *datum = d;
 char *name = k, **perms = args;
 int value = datum->value - 1;

 perms[value] = kstrdup(name, GFP_ATOMIC);
 if (!perms[value])
  return -ENOMEM;

 return 0;
}
