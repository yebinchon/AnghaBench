
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filename {scalar_t__ refcnt; scalar_t__ name; scalar_t__ iname; } ;


 int BUG_ON (int) ;
 int __putname (struct filename*) ;
 int kfree (struct filename*) ;

void putname(struct filename *name)
{
 BUG_ON(name->refcnt <= 0);

 if (--name->refcnt > 0)
  return;

 if (name->name != name->iname) {
  __putname(name->name);
  kfree(name);
 } else
  __putname(name);
}
