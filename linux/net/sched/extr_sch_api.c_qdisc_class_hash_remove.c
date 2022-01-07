
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_class_hash {int hashelems; } ;
struct Qdisc_class_common {int hnode; } ;


 int hlist_del (int *) ;

void qdisc_class_hash_remove(struct Qdisc_class_hash *clhash,
        struct Qdisc_class_common *cl)
{
 hlist_del(&cl->hnode);
 clhash->hashelems--;
}
