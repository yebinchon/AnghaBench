
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_node* parent; int name; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int PATH_MAX ;
 int memcpy (char*,int ,int) ;
 int strcpy (char*,char*) ;
 int strlen (int ) ;

__attribute__((used)) static int kernfs_get_target_path(struct kernfs_node *parent,
      struct kernfs_node *target, char *path)
{
 struct kernfs_node *base, *kn;
 char *s = path;
 int len = 0;


 base = parent;
 while (base->parent) {
  kn = target->parent;
  while (kn->parent && base != kn)
   kn = kn->parent;

  if (base == kn)
   break;

  if ((s - path) + 3 >= PATH_MAX)
   return -ENAMETOOLONG;

  strcpy(s, "../");
  s += 3;
  base = base->parent;
 }


 kn = target;
 while (kn->parent && kn != base) {
  len += strlen(kn->name) + 1;
  kn = kn->parent;
 }


 if (len < 2)
  return -EINVAL;
 len--;
 if ((s - path) + len >= PATH_MAX)
  return -ENAMETOOLONG;


 kn = target;
 while (kn->parent && kn != base) {
  int slen = strlen(kn->name);

  len -= slen;
  memcpy(s + len, kn->name, slen);
  if (len)
   s[--len] = '/';

  kn = kn->parent;
 }

 return 0;
}
