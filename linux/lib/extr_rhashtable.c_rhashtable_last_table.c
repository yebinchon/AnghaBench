
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct bucket_table {int future_tbl; } ;


 struct bucket_table* rht_dereference_rcu (int ,struct rhashtable*) ;

__attribute__((used)) static struct bucket_table *rhashtable_last_table(struct rhashtable *ht,
        struct bucket_table *tbl)
{
 struct bucket_table *new_tbl;

 do {
  new_tbl = tbl;
  tbl = rht_dereference_rcu(tbl->future_tbl, ht);
 } while (tbl);

 return new_tbl;
}
