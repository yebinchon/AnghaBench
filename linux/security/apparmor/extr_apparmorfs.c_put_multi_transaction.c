
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_transaction {int count; } ;


 int kref_put (int *,int ) ;
 int multi_transaction_kref ;

__attribute__((used)) static void put_multi_transaction(struct multi_transaction *t)
{
 if (t)
  kref_put(&(t->count), multi_transaction_kref);
}
