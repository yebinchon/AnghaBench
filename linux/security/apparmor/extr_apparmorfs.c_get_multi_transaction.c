
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_transaction {int count; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct multi_transaction *
get_multi_transaction(struct multi_transaction *t)
{
 if (t)
  kref_get(&(t->count));

 return t;
}
