
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {char* path; int ino; int dev; int count; int rules; } ;


 int AUDIT_DEV_UNSET ;
 int AUDIT_INO_UNSET ;
 int ENOMEM ;
 struct audit_watch* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct audit_watch* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_watch *audit_init_watch(char *path)
{
 struct audit_watch *watch;

 watch = kzalloc(sizeof(*watch), GFP_KERNEL);
 if (unlikely(!watch))
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&watch->rules);
 refcount_set(&watch->count, 1);
 watch->path = path;
 watch->dev = AUDIT_DEV_UNSET;
 watch->ino = AUDIT_INO_UNSET;

 return watch;
}
