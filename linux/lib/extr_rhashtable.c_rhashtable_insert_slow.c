
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;
struct rhash_head {int dummy; } ;


 int EAGAIN ;
 int PTR_ERR (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 void* rhashtable_try_insert (struct rhashtable*,void const*,struct rhash_head*) ;

void *rhashtable_insert_slow(struct rhashtable *ht, const void *key,
        struct rhash_head *obj)
{
 void *data;

 do {
  rcu_read_lock();
  data = rhashtable_try_insert(ht, key, obj);
  rcu_read_unlock();
 } while (PTR_ERR(data) == -EAGAIN);

 return data;
}
