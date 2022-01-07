
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int parent; int ino; int dev; int path; } ;


 int ENOMEM ;
 struct audit_watch* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct audit_watch*) ;
 int audit_get_parent (int ) ;
 struct audit_watch* audit_init_watch (char*) ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_watch *audit_dupe_watch(struct audit_watch *old)
{
 char *path;
 struct audit_watch *new;

 path = kstrdup(old->path, GFP_KERNEL);
 if (unlikely(!path))
  return ERR_PTR(-ENOMEM);

 new = audit_init_watch(path);
 if (IS_ERR(new)) {
  kfree(path);
  goto out;
 }

 new->dev = old->dev;
 new->ino = old->ino;
 audit_get_parent(old->parent);
 new->parent = old->parent;

out:
 return new;
}
