
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_class_hash {int hash; } ;


 int kvfree (int ) ;

void qdisc_class_hash_destroy(struct Qdisc_class_hash *clhash)
{
 kvfree(clhash->hash);
}
