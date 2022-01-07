
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {char* name; scalar_t__ parent; } ;


 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int kernfs_name_locked(struct kernfs_node *kn, char *buf, size_t buflen)
{
 if (!kn)
  return strlcpy(buf, "(null)", buflen);

 return strlcpy(buf, kn->parent ? kn->name : "/", buflen);
}
