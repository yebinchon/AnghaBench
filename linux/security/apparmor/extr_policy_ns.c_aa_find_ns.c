
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;


 struct aa_ns* aa_findn_ns (struct aa_ns*,char const*,int ) ;
 int strlen (char const*) ;

struct aa_ns *aa_find_ns(struct aa_ns *root, const char *name)
{
 return aa_findn_ns(root, name, strlen(name));
}
