
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {int list; int count; int data; } ;


 int ENOMEM ;
 struct aa_loaddata* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct aa_loaddata*) ;
 int kref_init (int *) ;
 int kvzalloc (size_t,int ) ;
 struct aa_loaddata* kzalloc (int,int ) ;

struct aa_loaddata *aa_loaddata_alloc(size_t size)
{
 struct aa_loaddata *d;

 d = kzalloc(sizeof(*d), GFP_KERNEL);
 if (d == ((void*)0))
  return ERR_PTR(-ENOMEM);
 d->data = kvzalloc(size, GFP_KERNEL);
 if (!d->data) {
  kfree(d);
  return ERR_PTR(-ENOMEM);
 }
 kref_init(&d->count);
 INIT_LIST_HEAD(&d->list);

 return d;
}
