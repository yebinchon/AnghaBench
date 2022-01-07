
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_class_hash {unsigned int hashsize; unsigned int hashmask; scalar_t__ hashelems; int hash; } ;


 int ENOMEM ;
 int qdisc_class_hash_alloc (unsigned int) ;

int qdisc_class_hash_init(struct Qdisc_class_hash *clhash)
{
 unsigned int size = 4;

 clhash->hash = qdisc_class_hash_alloc(size);
 if (!clhash->hash)
  return -ENOMEM;
 clhash->hashsize = size;
 clhash->hashmask = size - 1;
 clhash->hashelems = 0;
 return 0;
}
