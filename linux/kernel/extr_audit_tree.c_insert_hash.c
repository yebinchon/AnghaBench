
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct audit_chunk {int hash; int key; } ;


 int WARN_ON_ONCE (int) ;
 struct list_head* chunk_hash (int ) ;
 int list_add_rcu (int *,struct list_head*) ;
 int smp_wmb () ;

__attribute__((used)) static void insert_hash(struct audit_chunk *chunk)
{
 struct list_head *list;






 smp_wmb();
 WARN_ON_ONCE(!chunk->key);
 list = chunk_hash(chunk->key);
 list_add_rcu(&chunk->hash, list);
}
