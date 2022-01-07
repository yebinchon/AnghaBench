
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {char* name; struct kernfs_node* parent; } ;
struct TYPE_2__ {struct kernfs_node* kn; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct kernfs_node* kernfs_common_ancestor (struct kernfs_node*,struct kernfs_node*) ;
 size_t kernfs_depth (struct kernfs_node*,struct kernfs_node*) ;
 TYPE_1__* kernfs_root (struct kernfs_node*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int kernfs_path_from_node_locked(struct kernfs_node *kn_to,
     struct kernfs_node *kn_from,
     char *buf, size_t buflen)
{
 struct kernfs_node *kn, *common;
 const char parent_str[] = "/..";
 size_t depth_from, depth_to, len = 0;
 int i, j;

 if (!kn_to)
  return strlcpy(buf, "(null)", buflen);

 if (!kn_from)
  kn_from = kernfs_root(kn_to)->kn;

 if (kn_from == kn_to)
  return strlcpy(buf, "/", buflen);

 if (!buf)
  return -EINVAL;

 common = kernfs_common_ancestor(kn_from, kn_to);
 if (WARN_ON(!common))
  return -EINVAL;

 depth_to = kernfs_depth(common, kn_to);
 depth_from = kernfs_depth(common, kn_from);

 buf[0] = '\0';

 for (i = 0; i < depth_from; i++)
  len += strlcpy(buf + len, parent_str,
          len < buflen ? buflen - len : 0);


 for (i = depth_to - 1; i >= 0; i--) {
  for (kn = kn_to, j = 0; j < i; j++)
   kn = kn->parent;
  len += strlcpy(buf + len, "/",
          len < buflen ? buflen - len : 0);
  len += strlcpy(buf + len, kn->name,
          len < buflen ? buflen - len : 0);
 }

 return len;
}
